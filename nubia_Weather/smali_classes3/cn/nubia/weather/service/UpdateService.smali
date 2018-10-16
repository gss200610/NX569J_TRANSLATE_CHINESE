.class public Lcn/nubia/weather/service/UpdateService;
.super Landroid/app/Service;
.source "UpdateService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "UpdateService"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private setNextAlarm()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 61
    const-string v3, "alarm"

    invoke-virtual {p0, v3}, Lcn/nubia/weather/service/UpdateService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 63
    .local v0, "manager":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/32 v8, 0x6ddd00

    add-long v4, v6, v8

    .line 64
    .local v4, "triggerTime":J
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcn/nubia/weather/utils/AlarmReceiver;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v1, "newIntent":Landroid/content/Intent;
    const-string v3, "cn.nubia.weather.TYPE_UPDATE_ALL_CITY_WEATHER"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-static {p0, v10, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 67
    .local v2, "pi":Landroid/app/PendingIntent;
    const/4 v3, 0x1

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 68
    const-string v3, "UpdateService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Next UpdateService will be startted at time ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "LAST_UPDATE_ALARM_TIME"

    invoke-static {p0, v3, v4, v5}, Lcn/nubia/weather/utils/PreferenceUtils;->setSettingLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 70
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 28
    const/4 v0, 0x0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 75
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 33
    const-string v0, "UpdateService"

    const-string v1, "UpdateService start"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcn/nubia/weather/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_0

    .line 37
    const-string v0, "UpdateService"

    const-string v1, "No network"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0}, Lcn/nubia/weather/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/service/WeatherJobService;->startJobService(Landroid/content/Context;)V

    .line 43
    :goto_0
    invoke-direct {p0}, Lcn/nubia/weather/service/UpdateService;->setNextAlarm()V

    .line 47
    const-string v0, "UpdateService"

    const-string v1, "UpdateService stopSelf"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcn/nubia/weather/service/UpdateService;->stopSelf()V

    .line 49
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/service/UpdateService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->appStartUpdate(Z)V

    goto :goto_0
.end method
