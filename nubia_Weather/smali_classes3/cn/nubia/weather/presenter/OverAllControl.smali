.class public final Lcn/nubia/weather/presenter/OverAllControl;
.super Ljava/lang/Object;
.source "OverAllControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;,
        Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;,
        Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;
    }
.end annotation


# static fields
.field private static final MESSAGE_CHECK_UPGRADE:I = 0x16000014

.field private static final MESSAGE_CLOSE_LOCATION_CLIENT:I = 0x16000012

.field private static final MESSAGE_LOCATION_END_SCAN:I = 0x16000016

.field private static final MESSAGE_LOCATION_QUERY_DELAY:I = 0x16000013

.field private static final MESSAGE_QUERY_MANUAL_WEATHER:I = 0x16000011

.field private static final MESSAGE_START_APP_UPDATE:I = 0x16000010

.field private static final MESSAGE_START_APP_UPDATE2:I = 0x16000015

.field private static final TAG:Ljava/lang/String; = "OverAllControl"

.field private static mInstance:Lcn/nubia/weather/presenter/OverAllControl;


# instance fields
.field private mAMapLocationListener:Lcom/amap/api/location/AMapLocationListener;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field

.field public mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

.field private mLocationClient:Lcom/amap/api/location/AMapLocationClient;

.field private mSearchKeywords:Ljava/lang/String;

.field private mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

.field private mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

.field private mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

.field private refreshCount:I


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;-><init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/presenter/OverAllControl$1;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .line 101
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;-><init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/presenter/OverAllControl$1;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mSearchKeywords:Ljava/lang/String;

    .line 482
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    .line 484
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$1;

    invoke-direct {v0, p0}, Lcn/nubia/weather/presenter/OverAllControl$1;-><init>(Lcn/nubia/weather/presenter/OverAllControl;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mAMapLocationListener:Lcom/amap/api/location/AMapLocationListener;

    .line 925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandlers:Ljava/util/List;

    .line 935
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    .line 108
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/presenter/OverAllControl$WeatherTaskListener;-><init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/presenter/OverAllControl$1;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .line 101
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/presenter/OverAllControl$ControlHandler;-><init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/presenter/OverAllControl$1;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mSearchKeywords:Ljava/lang/String;

    .line 482
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    .line 484
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl$1;

    invoke-direct {v0, p0}, Lcn/nubia/weather/presenter/OverAllControl$1;-><init>(Lcn/nubia/weather/presenter/OverAllControl;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mAMapLocationListener:Lcom/amap/api/location/AMapLocationListener;

    .line 925
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandlers:Ljava/util/List;

    .line 935
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    .line 111
    iput-object p1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    .line 117
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/weather/presenter/OverAllControl;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 87
    invoke-direct {p0}, Lcn/nubia/weather/presenter/OverAllControl;->isInstallMsgNeeded()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcn/nubia/weather/presenter/OverAllControl;ILcn/nubia/weather/app/Constant$OperationType;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(ILcn/nubia/weather/app/Constant$OperationType;)V

    return-void
.end method

.method static synthetic access$300(Lcn/nubia/weather/presenter/OverAllControl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/weather/presenter/OverAllControl;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/weather/presenter/OverAllControl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mSearchKeywords:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/weather/presenter/OverAllControl;)Lcn/nubia/weather/task/WeatherTask$TaskListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;
    .param p1, "x1"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcn/nubia/weather/presenter/OverAllControl;->startLocation(Lcn/nubia/weather/app/Constant$OperationType;)V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/weather/presenter/OverAllControl;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 87
    invoke-direct {p0}, Lcn/nubia/weather/presenter/OverAllControl;->checkUpgradeV2()V

    return-void
.end method

.method static synthetic access$900(Lcn/nubia/weather/presenter/OverAllControl;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/presenter/OverAllControl;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    return-object v0
.end method

.method private buildNotification()Landroid/app/Notification;
    .locals 6

    .prologue
    .line 1122
    const/4 v1, 0x0

    .line 1123
    .local v1, "builder":Landroid/app/Notification$Builder;
    const/4 v2, 0x0

    .line 1125
    .local v2, "notification":Landroid/app/Notification;
    new-instance v1, Landroid/app/Notification$Builder;

    .end local v1    # "builder":Landroid/app/Notification$Builder;
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1127
    .restart local v1    # "builder":Landroid/app/Notification$Builder;
    const v3, 0x7f02008d

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "Location"

    .line 1128
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const-string v4, "\u6b63\u5728\u540e\u53f0\u8fd0\u884c"

    .line 1129
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1131
    const/4 v3, -0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1132
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1133
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_0

    .line 1134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1135
    .local v0, "b1":Landroid/os/Bundle;
    const-string v3, "nubiaSort"

    const-string v4, "Notify"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setExtras(Landroid/os/Bundle;)Landroid/app/Notification$Builder;

    .line 1137
    const-string v3, "z0"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSortKey(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 1139
    .end local v0    # "b1":Landroid/os/Bundle;
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x10

    if-lt v3, v4, :cond_1

    .line 1140
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    move-object v3, v2

    .line 1144
    :goto_0
    return-object v3

    .line 1142
    :cond_1
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v3

    goto :goto_0
.end method

.method private checkUpdateWithCondition()Z
    .locals 8

    .prologue
    .line 190
    const/4 v4, 0x0

    .line 191
    .local v4, "result":Z
    iget-object v5, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v3

    .line 192
    .local v3, "networkType":I
    if-nez v3, :cond_1

    .line 193
    const-string v5, "OverAllControl"

    const-string v6, "no network"

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :cond_0
    :goto_0
    return v4

    .line 195
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 196
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 197
    .local v1, "day":I
    const-string v5, "OverAllControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "day "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .line 199
    iget-object v5, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v6, "UPGRADE_CHECK"

    const/4 v7, -0x1

    invoke-static {v5, v6, v7}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 200
    .local v2, "lastCheck":I
    const-string v5, "OverAllControl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastCheck"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    if-eq v1, v2, :cond_0

    .line 202
    const-string v5, "OverAllControl"

    const-string v6, "day != lastCheck"

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v4, 0x1

    goto :goto_0

    .line 205
    .end local v2    # "lastCheck":I
    :cond_2
    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    .line 206
    const-string v5, "OverAllControl"

    const-string v6, "WIFI"

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private final checkUpgradeV2()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const v5, 0x7f090047

    const/4 v4, 0x0

    .line 246
    invoke-static {v4}, Lcn/nubia/upgrade/constants/HttpConstants;->debug(Z)V

    .line 247
    const/4 v0, 0x0

    .line 248
    .local v0, "builder":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v2

    .line 249
    .local v2, "networkType":I
    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 250
    new-instance v3, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    invoke-virtual {v3, v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSlientDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    .line 251
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSlientInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    const v4, 0x7f020083

    .line 252
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setIcon(I)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    .line 253
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setNotificationTitle(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    .line 254
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v0

    .line 255
    const-string v3, "OverAllControl"

    const-string v4, "builder NETWORN_MOBILE"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    invoke-static {v0}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->getConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;

    move-result-object v1

    .line 264
    .local v1, "mUpdateConfig":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    if-nez v3, :cond_0

    .line 265
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v4, "OBYNXVE5dad0be55"

    const-string v5, "abc5862651ac8e45"

    invoke-static {v3, v4, v5}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    .line 267
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    invoke-virtual {v3, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->setConfiguration(Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;)V

    .line 269
    :cond_0
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    new-instance v5, Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;

    invoke-direct {v5, p0}, Lcn/nubia/weather/presenter/OverAllControl$mIGetVersionListener;-><init>(Lcn/nubia/weather/presenter/OverAllControl;)V

    invoke-virtual {v3, v4, v5}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->getVersion(Landroid/content/Context;Lcn/nubia/upgrade/http/IGetVersionListener;)V

    .line 270
    return-void

    .line 257
    .end local v1    # "mUpdateConfig":Lcn/nubia/upgrade/api/NubiaUpdateConfiguration;
    :cond_1
    new-instance v3, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    invoke-direct {v3}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;-><init>()V

    invoke-virtual {v3, v6}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSlientDownload(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    .line 258
    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setShowNotification(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setSlientInstall(Z)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    .line 259
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;->setAppName(Ljava/lang/String;)Lcn/nubia/upgrade/api/NubiaUpdateConfiguration$Builder;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 120
    const-class v1, Lcn/nubia/weather/presenter/OverAllControl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/weather/presenter/OverAllControl;->mInstance:Lcn/nubia/weather/presenter/OverAllControl;

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Lcn/nubia/weather/presenter/OverAllControl;

    invoke-direct {v0, p0}, Lcn/nubia/weather/presenter/OverAllControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/weather/presenter/OverAllControl;->mInstance:Lcn/nubia/weather/presenter/OverAllControl;

    .line 123
    :cond_0
    sget-object v0, Lcn/nubia/weather/presenter/OverAllControl;->mInstance:Lcn/nubia/weather/presenter/OverAllControl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLocationClientOption(Landroid/content/Context;)Lcom/amap/api/location/AMapLocationClientOption;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 602
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption;

    invoke-direct {v0}, Lcom/amap/api/location/AMapLocationClientOption;-><init>()V

    .line 603
    .local v0, "option":Lcom/amap/api/location/AMapLocationClientOption;
    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;->Battery_Saving:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationMode(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationMode;)Lcom/amap/api/location/AMapLocationClientOption;

    .line 604
    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v1}, Lcom/amap/api/location/AMapLocationClientOption;->setLocationProtocol(Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;)V

    .line 605
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setKillProcess(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 606
    invoke-virtual {v0, v2}, Lcom/amap/api/location/AMapLocationClientOption;->setOffset(Z)Lcom/amap/api/location/AMapLocationClientOption;

    .line 615
    return-object v0
.end method

.method private getLocationInfo(ZLcn/nubia/weather/app/Constant$OperationType;)V
    .locals 3
    .param p1, "isRetry"    # Z
    .param p2, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 465
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-nez v0, :cond_0

    .line 466
    new-instance v0, Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/location/AMapLocationClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 467
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->getLocationClientOption(Landroid/content/Context;)Lcom/amap/api/location/AMapLocationClientOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationOption(Lcom/amap/api/location/AMapLocationClientOption;)V

    .line 468
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mAMapLocationListener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->setLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 471
    :cond_0
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq p2, v0, :cond_1

    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne p2, v0, :cond_2

    .line 472
    :cond_1
    const-string v0, "OverAllControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mListenerOperationType in getLocationInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mListenerOperationType:Lcn/nubia/weather/app/Constant$OperationType;

    .line 475
    :cond_2
    const-string v0, "OverAllControl"

    const-string v1, "BaiDu LocationClient start"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 476
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 477
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 479
    :cond_3
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->startLocation()V

    .line 480
    return-void
.end method

.method private isInstallMsgNeeded()Z
    .locals 12

    .prologue
    .line 214
    const/4 v6, 0x0

    .line 216
    .local v6, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 217
    .local v0, "currentTime":J
    iget-object v7, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v8, "DOWNLOAD_CHECK"

    const-wide/16 v10, 0x0

    invoke-static {v7, v8, v10, v11}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 218
    .local v2, "lastTime":J
    const-wide/32 v4, 0x5265c00

    .line 219
    .local v4, "oneDayTime":J
    sub-long v8, v0, v2

    cmp-long v7, v8, v4

    if-lez v7, :cond_0

    .line 220
    const-string v7, "OverAllControl"

    const-string v8, "day != lastCheck"

    invoke-static {v7, v8}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v6, 0x1

    .line 223
    :cond_0
    iget-object v7, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v8, "DOWNLOAD_CHECK"

    invoke-static {v7, v8, v0, v1}, Lcn/nubia/weather/utils/PreferenceUtils;->setSettingLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 224
    return v6
.end method

.method private queryManualFirstCityWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 8
    .param p1, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 386
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcn/nubia/weather/data/DataCenter;->getWeather(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    .line 387
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    if-nez v0, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 390
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_0

    .line 393
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v2

    .line 394
    .local v2, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v2, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/32 v6, 0x493e0

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 395
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmNubiaServerModel()Lcn/nubia/weather/model/NubiaServerModel;

    move-result-object v1

    if-nez v1, :cond_2

    .line 396
    const-string v1, "OverAllControl"

    const-string v4, "Short Skip"

    invoke-static {v1, v4}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 398
    :cond_2
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmParentCityID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v1, v4, v5, p1}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0
.end method

.method private queryManualWeatherInfo2(Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 12
    .param p1, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 361
    iget-object v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/weather/data/CityOrderCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/CityOrderCenter;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/data/CityOrderCenter;->getCitysOrder()Ljava/util/List;

    move-result-object v0

    .line 362
    .local v0, "cityOrder":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 363
    .local v2, "requestList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;

    .line 364
    .local v3, "unit":Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;
    invoke-virtual {v3}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmType()I

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_0

    .line 367
    invoke-virtual {v3}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 370
    iget-object v7, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v7

    .line 371
    invoke-virtual {v3}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmAreaID()Ljava/lang/String;

    move-result-object v8

    .line 370
    invoke-virtual {v7, v8}, Lcn/nubia/weather/data/DataCenter;->getWeatherByAreaID(Ljava/lang/String;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    .line 372
    .local v1, "model":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v1, :cond_0

    .line 373
    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v4

    .line 374
    .local v4, "time":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v8, v4, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/32 v10, 0x493e0

    cmp-long v7, v8, v10

    if-gez v7, :cond_1

    .line 375
    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmNubiaServerModel()Lcn/nubia/weather/model/NubiaServerModel;

    move-result-object v7

    if-nez v7, :cond_1

    .line 376
    const-string v7, "OverAllControl"

    const-string v8, "Short Skip"

    invoke-static {v7, v8}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_1
    invoke-virtual {v3}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 380
    invoke-virtual {p0, v1, p1}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherWithTimeThreshold(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0

    .line 383
    .end local v1    # "model":Lcn/nubia/weather/model/WeatherModel;
    .end local v3    # "unit":Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;
    .end local v4    # "time":J
    :cond_2
    return-void
.end method

.method private registerWifiScanBroadcast()V
    .locals 3

    .prologue
    .line 171
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

    if-nez v1, :cond_0

    .line 172
    const-string v1, "OverAllControl"

    const-string v2, "register"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    new-instance v1, Lcn/nubia/weather/utils/WifiReceiver;

    invoke-direct {v1}, Lcn/nubia/weather/utils/WifiReceiver;-><init>()V

    iput-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

    .line 174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 175
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 176
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 179
    .end local v0    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private sendMessage(ILcn/nubia/weather/app/Constant$OperationType;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 896
    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq p2, v1, :cond_0

    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne p2, v1, :cond_1

    .line 897
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandlers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 898
    .local v0, "handler":Landroid/os/Handler;
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 901
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_1
    return-void
.end method

.method private sendMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    .line 915
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 916
    .local v0, "handler":Landroid/os/Handler;
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 917
    .local v1, "msg":Landroid/os/Message;
    iget v3, p1, Landroid/os/Message;->what:I

    iput v3, v1, Landroid/os/Message;->what:I

    .line 918
    iget v3, p1, Landroid/os/Message;->arg1:I

    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 919
    iget v3, p1, Landroid/os/Message;->arg2:I

    iput v3, v1, Landroid/os/Message;->arg2:I

    .line 920
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 921
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 923
    .end local v0    # "handler":Landroid/os/Handler;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private startLocation(Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 1
    .param p1, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 460
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcn/nubia/weather/presenter/OverAllControl;->getLocationInfo(ZLcn/nubia/weather/app/Constant$OperationType;)V

    .line 461
    return-void
.end method


# virtual methods
.method public addActivityHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 928
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 929
    return-void
.end method

.method public addEmptyLocModel()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    .line 801
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v1, "isLocationOpen"

    invoke-static {v0, v1, v4}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    .line 803
    .local v6, "isLocationOpen":Z
    if-eqz v6, :cond_0

    .line 804
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_0

    .line 806
    const-string v1, ""

    const-string v2, ""

    const-string v3, ""

    const-string v5, ""

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/weather/presenter/OverAllControl;->createAndAddModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 809
    :cond_0
    return-void
.end method

.method public appStartUpdate()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x1f4

    .line 761
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v1

    if-nez v1, :cond_0

    .line 762
    const-string v1, "OverAllControl"

    const-string v2, "NotPrepare  Delay update"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const v2, 0x16000015

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 764
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 772
    :goto_0
    return-void

    .line 767
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const v2, 0x16000010

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 768
    .restart local v0    # "msg":Landroid/os/Message;
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 770
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public appStartUpdate(Z)V
    .locals 8
    .param p1, "isDelay"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 779
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v0

    if-nez v0, :cond_0

    .line 781
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const v1, 0x16000010

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v7

    .line 782
    .local v7, "msg":Landroid/os/Message;
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 783
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v7, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 798
    .end local v7    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 786
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v1, "isLocationOpen"

    invoke-static {v0, v1, v4}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    .line 788
    .local v6, "isLocationOpen":Z
    if-eqz v6, :cond_2

    .line 789
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter;->hasLocation()Z

    move-result v0

    if-nez v0, :cond_1

    .line 791
    const-string v1, ""

    const-string v2, ""

    move-object v0, p0

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/weather/presenter/OverAllControl;->createAndAddModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 793
    :cond_1
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {p0, v0}, Lcn/nubia/weather/presenter/OverAllControl;->locationAndQueryWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0

    .line 795
    :cond_2
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {p0, v0}, Lcn/nubia/weather/presenter/OverAllControl;->queryManualWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0
.end method

.method public final checkUpgrade()V
    .locals 4

    .prologue
    const v1, 0x16000014

    .line 228
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->isSupportUpgrade()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const-string v0, "OverAllControl"

    const-string v1, "do not support upgrade"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :goto_0
    return-void

    .line 233
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 236
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public cloaseLocationClient()V
    .locals 2

    .prologue
    .line 904
    const-string v0, "OverAllControl"

    const-string v1, "cloaseLocationClient"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    if-eqz v0, :cond_0

    .line 906
    const-string v0, "OverAllControl"

    const-string v1, "LocationClient Stop"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 907
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->stopLocation()V

    .line 908
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mAMapLocationListener:Lcom/amap/api/location/AMapLocationListener;

    invoke-virtual {v0, v1}, Lcom/amap/api/location/AMapLocationClient;->unRegisterLocationListener(Lcom/amap/api/location/AMapLocationListener;)V

    .line 909
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    invoke-virtual {v0}, Lcom/amap/api/location/AMapLocationClient;->onDestroy()V

    .line 910
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mLocationClient:Lcom/amap/api/location/AMapLocationClient;

    .line 912
    :cond_0
    return-void
.end method

.method public createAndAddModel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "cityName"    # Ljava/lang/String;
    .param p3, "parentId"    # Ljava/lang/String;
    .param p4, "type"    # I
    .param p5, "gmtOffSet"    # Ljava/lang/String;

    .prologue
    .line 813
    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    .line 814
    new-instance v0, Lcn/nubia/weather/model/WeatherModel;

    invoke-direct {v0}, Lcn/nubia/weather/model/WeatherModel;-><init>()V

    .line 815
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0, p1}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 816
    invoke-virtual {v0, p3}, Lcn/nubia/weather/model/WeatherModel;->setmParentCityID(Ljava/lang/String;)V

    .line 817
    invoke-virtual {v0, p5}, Lcn/nubia/weather/model/WeatherModel;->setGmtOffSet(Ljava/lang/String;)V

    .line 818
    invoke-virtual {v0, p2}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 819
    invoke-virtual {v0, p4}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V

    .line 820
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/weather/data/DataCenter;->addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    .line 839
    .end local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_0
    :goto_0
    return-void

    .line 821
    :cond_1
    if-nez p4, :cond_0

    .line 822
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p4}, Lcn/nubia/weather/data/DataCenter;->getWeater(Ljava/lang/String;Ljava/lang/String;I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    .line 823
    .restart local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    if-nez v0, :cond_2

    .line 824
    new-instance v0, Lcn/nubia/weather/model/WeatherModel;

    .end local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-direct {v0}, Lcn/nubia/weather/model/WeatherModel;-><init>()V

    .line 825
    .restart local v0    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v0, p1}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 826
    invoke-virtual {v0, p2}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 827
    invoke-virtual {v0, p3}, Lcn/nubia/weather/model/WeatherModel;->setmParentCityID(Ljava/lang/String;)V

    .line 828
    invoke-virtual {v0, p5}, Lcn/nubia/weather/model/WeatherModel;->setGmtOffSet(Ljava/lang/String;)V

    .line 829
    invoke-virtual {v0, p4}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V

    .line 830
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/weather/data/DataCenter;->addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0

    .line 832
    :cond_2
    invoke-virtual {v0, p1}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0, p2}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0, p3}, Lcn/nubia/weather/model/WeatherModel;->setmParentCityID(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v0, p5}, Lcn/nubia/weather/model/WeatherModel;->setGmtOffSet(Ljava/lang/String;)V

    .line 836
    invoke-virtual {v0, p4}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V

    goto :goto_0
.end method

.method public downloadNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 2
    .param p1, "newVersionData"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 998
    const-string v0, "OverAllControl"

    const-string v1, "downloadNewVersion "

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    new-instance v1, Lcn/nubia/weather/presenter/OverAllControl$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/weather/presenter/OverAllControl$2;-><init>(Lcn/nubia/weather/presenter/OverAllControl;Lcn/nubia/upgrade/model/VersionData;)V

    invoke-virtual {v0, v1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->addDownLoadListener(Lcn/nubia/upgrade/http/IDownLoadListener;)V

    .line 1045
    if-eqz p1, :cond_0

    .line 1046
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->startApkDown(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    .line 1048
    :cond_0
    return-void
.end method

.method public getAreaIDByLocation(DDLcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V
    .locals 9
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .param p5, "type"    # Lcn/nubia/weather/app/Constant$OperationType;
    .param p6, "listener"    # Lcn/nubia/weather/task/WeatherTask$TaskListener;

    .prologue
    .line 345
    iget-object v2, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v2

    if-nez v2, :cond_0

    .line 346
    const-string v2, "OverAllControl"

    const-string v3, "NETWORN_NONE)"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 348
    .local v0, "message":Landroid/os/Message;
    const/high16 v2, 0x100000

    iput v2, v0, Landroid/os/Message;->what:I

    .line 349
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    .line 350
    .local v8, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v2, "KEY_MAP_AREAID"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v2, "KEY_MAP_CITYNAME"

    const-string v3, ""

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    iput-object v8, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    invoke-direct {p0, v0}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(Landroid/os/Message;)V

    .line 358
    .end local v0    # "message":Landroid/os/Message;
    .end local v8    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void

    .line 356
    :cond_0
    new-instance v1, Lcn/nubia/weather/task/GeoTask;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcn/nubia/weather/task/GeoTask;-><init>(DDLcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 357
    .local v1, "task":Lcn/nubia/weather/task/GeoTask;
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public getWifiScanResults()I
    .locals 7

    .prologue
    .line 127
    const/4 v1, 0x0

    .line 129
    .local v1, "size":I
    :try_start_0
    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 130
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 131
    .local v2, "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 132
    :cond_0
    const-string v4, "OverAllControl"

    const-string v5, "getWifiScanResults = 0"

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    .end local v2    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return v1

    .line 134
    .restart local v2    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .restart local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    const-string v4, "OverAllControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWifiScanResults"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-interface {v2}, Ljava/util/List;->size()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 137
    .end local v2    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public installNewVersion(Lcn/nubia/upgrade/model/VersionData;)V
    .locals 2
    .param p1, "newVersionData"    # Lcn/nubia/upgrade/model/VersionData;

    .prologue
    .line 992
    if-eqz p1, :cond_0

    .line 993
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mUpgradeManager:Lcn/nubia/upgrade/api/NubiaUpgradeManager;

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/upgrade/api/NubiaUpgradeManager;->install(Landroid/content/Context;Lcn/nubia/upgrade/model/VersionData;)V

    .line 995
    :cond_0
    return-void
.end method

.method public isWifiScanEnabled()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 163
    :try_start_0
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v4, "wifi"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 164
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isScanAlwaysAvailable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 166
    .end local v1    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_0
    return v2

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public locationAndQueryWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 8
    .param p1, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    const v7, 0x16000016

    const v6, 0x16000013

    .line 416
    const-string v3, "OverAllControl"

    const-string v4, "Enter locationAndQueryWeatherInfo"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_2

    .line 418
    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq p1, v3, :cond_0

    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne p1, v3, :cond_1

    .line 419
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 420
    .local v1, "message":Landroid/os/Message;
    const/high16 v3, 0x100000

    iput v3, v1, Landroid/os/Message;->what:I

    .line 421
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 422
    .local v2, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "KEY_MAP_AREAID"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    const-string v3, "KEY_MAP_CITYNAME"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 425
    invoke-direct {p0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(Landroid/os/Message;)V

    .line 457
    .end local v1    # "message":Landroid/os/Message;
    .end local v2    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 430
    :cond_2
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v4, "isLocationOpen"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    .line 431
    const-string v3, "OverAllControl"

    const-string v4, "Location is Turn OFF"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 435
    :cond_3
    invoke-static {}, Lcn/nubia/weather/data/GarbageCache;->getInstance()Lcn/nubia/weather/data/GarbageCache;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/data/GarbageCache;->getLocationWeather()Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    .line 436
    .local v0, "m":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v0, :cond_4

    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq p1, v3, :cond_4

    .line 437
    const-string v3, "OverAllControl"

    const-string v4, "Get Weather model From garbage. "

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/weather/data/DataCenter;->addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0

    .line 441
    :cond_4
    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne p1, v3, :cond_5

    .line 442
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 443
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0xbb8

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 446
    :cond_5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_6

    invoke-virtual {p0}, Lcn/nubia/weather/presenter/OverAllControl;->getWifiScanResults()I

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p0}, Lcn/nubia/weather/presenter/OverAllControl;->isWifiScanEnabled()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 447
    invoke-direct {p0}, Lcn/nubia/weather/presenter/OverAllControl;->registerWifiScanBroadcast()V

    .line 448
    invoke-virtual {p0}, Lcn/nubia/weather/presenter/OverAllControl;->startScan()V

    .line 449
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 450
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7530

    invoke-virtual {v3, v7, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 454
    :cond_6
    invoke-direct {p0, p1}, Lcn/nubia/weather/presenter/OverAllControl;->startLocation(Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0
.end method

.method public onReceiveScanResult()V
    .locals 1

    .prologue
    .line 155
    invoke-virtual {p0}, Lcn/nubia/weather/presenter/OverAllControl;->getWifiScanResults()I

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    sget-object v0, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-direct {p0, v0}, Lcn/nubia/weather/presenter/OverAllControl;->startLocation(Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 157
    invoke-virtual {p0}, Lcn/nubia/weather/presenter/OverAllControl;->unRegisterWifiScanBroadCast()V

    .line 159
    :cond_0
    return-void
.end method

.method public queryManualWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 4
    .param p1, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 404
    const-string v1, "OverAllControl"

    const-string v2, "Enter queryManualWeatherInfo"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    invoke-direct {p0, p1}, Lcn/nubia/weather/presenter/OverAllControl;->queryManualFirstCityWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 413
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 409
    .local v0, "message":Landroid/os/Message;
    const v1, 0x16000011

    iput v1, v0, Landroid/os/Message;->what:I

    .line 410
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 411
    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method public queryWeatherInfo(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 1
    .param p1, "areadID"    # Ljava/lang/String;
    .param p2, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 340
    const-string v0, "Asia/Shanghai"

    invoke-virtual {p0, p1, p1, v0, p2}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 341
    return-void
.end method

.method public queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 14
    .param p1, "areadID"    # Ljava/lang/String;
    .param p2, "parentID"    # Ljava/lang/String;
    .param p3, "gmtOffset"    # Ljava/lang/String;
    .param p4, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 289
    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v11

    if-nez v11, :cond_2

    .line 290
    const-string v11, "OverAllControl"

    const-string v12, "NETWORN_NONE)"

    invoke-static {v11, v12}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v11, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    move-object/from16 v0, p4

    if-eq v0, v11, :cond_0

    sget-object v11, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    move-object/from16 v0, p4

    if-ne v0, v11, :cond_1

    .line 292
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    .line 293
    .local v7, "message":Landroid/os/Message;
    const/high16 v11, 0x100000

    iput v11, v7, Landroid/os/Message;->what:I

    .line 294
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 295
    .local v9, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v11, "KEY_MAP_AREAID"

    invoke-interface {v9, v11, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    const-string v11, "KEY_MAP_CITYNAME"

    const-string v12, ""

    invoke-interface {v9, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    iput-object v9, v7, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 298
    invoke-direct {p0, v7}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(Landroid/os/Message;)V

    .line 337
    .end local v7    # "message":Landroid/os/Message;
    .end local v9    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    :goto_0
    return-void

    .line 302
    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 303
    :cond_3
    const-string v11, "OverAllControl"

    const-string v12, "QueryWeatherInfo  But areadID is Null"

    invoke-static {v11, v12}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 306
    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 307
    :cond_5
    move-object/from16 p2, p1

    .line 309
    :cond_6
    const-string v11, "TYPE_NWS_SERVER"

    const-string v12, "TYPE_NWS_SERVER"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 310
    const-string v11, "OverAllControl"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "queryWeatherInfo areadID = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v1, Lcn/nubia/weather/task/AirTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v1, p1, v0, v11}, Lcn/nubia/weather/task/AirTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 312
    .local v1, "airTask":Lcn/nubia/weather/task/WeatherTask;
    new-instance v2, Lcn/nubia/weather/task/AlarmTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v2, p1, v0, v11}, Lcn/nubia/weather/task/AlarmTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 313
    .local v2, "alarmTask":Lcn/nubia/weather/task/WeatherTask;
    new-instance v3, Lcn/nubia/weather/task/Forecast5dTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v3, p1, v0, v11}, Lcn/nubia/weather/task/Forecast5dTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 314
    .local v3, "forecast5dTask":Lcn/nubia/weather/task/WeatherTask;
    new-instance v4, Lcn/nubia/weather/task/HourfcTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v4, p1, v0, v11}, Lcn/nubia/weather/task/HourfcTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 315
    .local v4, "hourfcTask":Lcn/nubia/weather/task/WeatherTask;
    new-instance v5, Lcn/nubia/weather/task/IndexTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v5, p1, v0, v11}, Lcn/nubia/weather/task/IndexTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 316
    .local v5, "indexTask":Lcn/nubia/weather/task/WeatherTask;
    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Lcn/nubia/weather/task/WeatherTask;->setmParentId(Ljava/lang/String;)V

    .line 317
    new-instance v10, Lcn/nubia/weather/task/ObserveTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v10, p1, v0, v11}, Lcn/nubia/weather/task/ObserveTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 321
    .local v10, "observeTask":Lcn/nubia/weather/task/WeatherTask;
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 322
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v2}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 323
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v3}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 324
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v4}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 325
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v5}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 326
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 328
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 329
    new-instance v6, Lcn/nubia/weather/task/LocKeyCitySearchTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v6, p1, v0, v11}, Lcn/nubia/weather/task/LocKeyCitySearchTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 331
    .local v6, "locKeyCitySearchTask":Lcn/nubia/weather/task/WeatherTask;
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 333
    .end local v1    # "airTask":Lcn/nubia/weather/task/WeatherTask;
    .end local v2    # "alarmTask":Lcn/nubia/weather/task/WeatherTask;
    .end local v3    # "forecast5dTask":Lcn/nubia/weather/task/WeatherTask;
    .end local v4    # "hourfcTask":Lcn/nubia/weather/task/WeatherTask;
    .end local v5    # "indexTask":Lcn/nubia/weather/task/WeatherTask;
    .end local v6    # "locKeyCitySearchTask":Lcn/nubia/weather/task/WeatherTask;
    .end local v10    # "observeTask":Lcn/nubia/weather/task/WeatherTask;
    :cond_7
    const-string v11, "TYPE_NWS_SERVER"

    const-string v12, "TYPE_NUBIA_SERVER"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 334
    new-instance v8, Lcn/nubia/weather/task/NubiaServerTask;

    iget-object v11, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    move-object/from16 v0, p4

    invoke-direct {v8, p1, v0, v11}, Lcn/nubia/weather/task/NubiaServerTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 335
    .local v8, "nubiaTask":Lcn/nubia/weather/task/WeatherTask;
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v11

    invoke-virtual {v11, v8}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method public queryWeatherWithTimeThreshold(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)V
    .locals 4
    .param p1, "mWeather"    # Lcn/nubia/weather/model/WeatherModel;
    .param p2, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 273
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 285
    :goto_0
    return-void

    .line 276
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmRefreshTime(J)V

    .line 279
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x927c0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_1

    .line 280
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmParentCityID()Ljava/lang/String;

    move-result-object v1

    .line 281
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v2

    .line 280
    invoke-virtual {p0, v0, v1, v2, p2}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_0

    .line 283
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/weather/data/DataCenter;->notifyWithNoUpdate(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0
.end method

.method public refreshWeatherData(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)Z
    .locals 10
    .param p1, "mWeather"    # Lcn/nubia/weather/model/WeatherModel;
    .param p2, "type"    # Lcn/nubia/weather/app/Constant$OperationType;

    .prologue
    .line 938
    const/4 v1, 0x0

    .line 939
    .local v1, "needNotityWithoutUpdate":Z
    iget-object v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v6

    if-nez v6, :cond_2

    .line 940
    const-string v6, "OverAllControl"

    const-string v7, "NETWORN_NONE)"

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 941
    sget-object v6, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq p2, v6, :cond_0

    sget-object v6, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    if-ne p2, v6, :cond_1

    .line 942
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 943
    .local v0, "message":Landroid/os/Message;
    const/high16 v6, 0x100000

    iput v6, v0, Landroid/os/Message;->what:I

    .line 944
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 945
    .local v3, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "KEY_MAP_AREAID"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    const-string v6, "KEY_MAP_CITYNAME"

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 948
    invoke-direct {p0, v0}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(Landroid/os/Message;)V

    .end local v0    # "message":Landroid/os/Message;
    .end local v3    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    move v2, v1

    .line 988
    .end local v1    # "needNotityWithoutUpdate":Z
    .local v2, "needNotityWithoutUpdate":I
    :goto_0
    return v2

    .line 952
    .end local v2    # "needNotityWithoutUpdate":I
    .restart local v1    # "needNotityWithoutUpdate":Z
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p1, v6, v7}, Lcn/nubia/weather/model/WeatherModel;->setmRefreshTime(J)V

    .line 954
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    .line 955
    const-string v6, "OverAllControl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget v8, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " count"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    .line 957
    .local v4, "timeDiff":J
    const-wide/32 v6, 0x927c0

    cmp-long v6, v4, v6

    if-lez v6, :cond_4

    .line 959
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 958
    invoke-static {v6}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v6

    .line 960
    invoke-virtual {v6, p2}, Lcn/nubia/weather/presenter/OverAllControl;->locationAndQueryWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 961
    const/4 v6, 0x0

    iput v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    .line 972
    :goto_1
    iget v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    const/4 v7, 0x3

    if-ge v6, v7, :cond_3

    .line 973
    iget v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    .end local v4    # "timeDiff":J
    :cond_3
    :goto_2
    move v2, v1

    .line 988
    .restart local v2    # "needNotityWithoutUpdate":I
    goto :goto_0

    .line 962
    .end local v2    # "needNotityWithoutUpdate":I
    .restart local v4    # "timeDiff":J
    :cond_4
    iget v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    const/4 v7, 0x2

    if-le v6, v7, :cond_5

    const-wide/32 v6, 0x2bf20

    cmp-long v6, v4, v6

    if-lez v6, :cond_5

    .line 963
    const-string v6, "OverAllControl"

    const-string v7, "do refresh"

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 965
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 964
    invoke-static {v6}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v6

    .line 966
    invoke-virtual {v6, p2}, Lcn/nubia/weather/presenter/OverAllControl;->locationAndQueryWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 967
    const/4 v6, 0x0

    iput v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    goto :goto_1

    .line 969
    :cond_5
    iget-object v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcn/nubia/weather/data/DataCenter;->notifyWithNoUpdate(Lcn/nubia/weather/model/WeatherModel;)V

    .line 970
    const/4 v1, 0x1

    goto :goto_1

    .line 976
    .end local v4    # "timeDiff":J
    :cond_6
    const/4 v6, 0x0

    iput v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->refreshCount:I

    .line 977
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x927c0

    cmp-long v6, v6, v8

    if-gez v6, :cond_8

    .line 978
    sget-object v6, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    if-eq v6, p2, :cond_7

    .line 979
    iget-object v6, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcn/nubia/weather/data/DataCenter;->notifyWithNoUpdate(Lcn/nubia/weather/model/WeatherModel;)V

    .line 981
    :cond_7
    const/4 v1, 0x1

    goto :goto_2

    .line 983
    :cond_8
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v6

    .line 984
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmParentCityID()Ljava/lang/String;

    move-result-object v8

    .line 985
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v9

    .line 984
    invoke-virtual {v6, v7, v8, v9, p2}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    goto :goto_2
.end method

.method public removeActivityHandler(Landroid/os/Handler;)V
    .locals 1
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 932
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mHandlers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 933
    return-void
.end method

.method public searchCities(Ljava/lang/String;)V
    .locals 5
    .param p1, "keywords"    # Ljava/lang/String;

    .prologue
    .line 1107
    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_0

    .line 1108
    const-string v3, "OverAllControl"

    const-string v4, "NETWORN_NONE)"

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1109
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 1110
    .local v1, "message":Landroid/os/Message;
    const v3, 0x100009

    iput v3, v1, Landroid/os/Message;->what:I

    .line 1111
    invoke-direct {p0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->sendMessage(Landroid/os/Message;)V

    .line 1118
    .end local v1    # "message":Landroid/os/Message;
    :goto_0
    return-void

    .line 1114
    :cond_0
    sget-object v2, Lcn/nubia/weather/app/Constant$OperationType;->SEARCH:Lcn/nubia/weather/app/Constant$OperationType;

    .line 1115
    .local v2, "type":Lcn/nubia/weather/app/Constant$OperationType;
    new-instance v0, Lcn/nubia/weather/task/CitySearchTask;

    iget-object v3, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWeatherListener:Lcn/nubia/weather/task/WeatherTask$TaskListener;

    invoke-direct {v0, p1, v2, v3}, Lcn/nubia/weather/task/CitySearchTask;-><init>(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;Lcn/nubia/weather/task/WeatherTask$TaskListener;)V

    .line 1116
    .local v0, "citySearchTask":Lcn/nubia/weather/task/WeatherTask;
    invoke-static {}, Lcn/nubia/weather/app/ThreadPool;->getInstance()Lcn/nubia/weather/app/ThreadPool;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcn/nubia/weather/app/ThreadPool;->addTask(Ljava/lang/Runnable;)V

    .line 1117
    iput-object p1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mSearchKeywords:Ljava/lang/String;

    goto :goto_0
.end method

.method public startScan()V
    .locals 6

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 146
    .local v1, "size":I
    :try_start_0
    iget-object v4, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    const-string v5, "wifi"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 147
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v2

    .line 148
    .local v2, "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->startScan()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v2    # "wifiList":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    .end local v3    # "wifiManager":Landroid/net/wifi/WifiManager;
    :goto_0
    return-void

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public unRegisterWifiScanBroadCast()V
    .locals 2

    .prologue
    .line 182
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

    if-eqz v0, :cond_0

    .line 183
    const-string v0, "OverAllControl"

    const-string v1, "unregister"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/presenter/OverAllControl;->mWifiScanRsultReciver:Lcn/nubia/weather/utils/WifiReceiver;

    .line 187
    :cond_0
    return-void
.end method
