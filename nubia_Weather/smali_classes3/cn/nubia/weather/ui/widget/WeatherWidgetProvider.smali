.class public Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;
.super Lcn/nubia/weather/ui/widget/WidgetProvider;
.source "WeatherWidgetProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherWidgetProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcn/nubia/weather/ui/widget/WidgetProvider;-><init>()V

    return-void
.end method

.method private initRemoteView(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 253
    const-string v2, "nubia.widget.NubiaTextClock"

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->isFontClassExisted(Ljava/lang/String;)Z

    move-result v0

    .line 254
    .local v0, "isNubiaTextClockExist":Z
    const/4 v1, 0x0

    .line 255
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    .line 256
    new-instance v1, Landroid/widget/RemoteViews;

    .end local v1    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03005c

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 261
    .restart local v1    # "remoteViews":Landroid/widget/RemoteViews;
    :goto_0
    return-object v1

    .line 258
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    .end local v1    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03005d

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v1    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_0
.end method

.method private isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 246
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 247
    .local v1, "manager":Landroid/content/pm/PackageManager;
    const/high16 v2, 0x10000

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 249
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isNubiaSearchAvilible(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 228
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 229
    .local v2, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    .line 231
    .local v3, "pinfo":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 235
    :goto_0
    if-nez v3, :cond_0

    move v4, v5

    .line 242
    :goto_1
    return v4

    .line 232
    :catch_0
    move-exception v0

    .line 233
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 238
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 239
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v6, "cn.nubia.browser"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 240
    const/4 v4, 0x1

    goto :goto_1

    .line 238
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    move v4, v5

    .line 242
    goto :goto_1
.end method

.method private updateTime(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const v5, 0x7f0f013f

    const v4, 0x7f0f013e

    const v3, 0x7f09016a

    const v2, 0x7f090060

    .line 266
    const-string v0, "setFormat12Hour"

    .line 267
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    invoke-virtual {p2, v4, v0, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 268
    const-string v0, "setFormat24Hour"

    .line 269
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-virtual {p2, v4, v0, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 270
    const-string v0, "setFormat12Hour"

    .line 271
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 270
    invoke-virtual {p2, v5, v0, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 272
    const-string v0, "setFormat24Hour"

    .line 273
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 272
    invoke-virtual {p2, v5, v0, v1}, Landroid/widget/RemoteViews;->setCharSequence(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method


# virtual methods
.method protected getWeatherDate(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 163
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v10

    invoke-virtual {v10, p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 164
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->initRemoteView(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v9

    .line 165
    .local v9, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v9, :cond_0

    .line 225
    :goto_0
    return-void

    .line 175
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-class v10, Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-direct {v4, p1, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v4, "intentWeather":Landroid/content/Intent;
    const-string v10, "WIDGET_ACTION"

    invoke-virtual {v4, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-static {p1, v12, v4, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 178
    .local v8, "piW":Landroid/app/PendingIntent;
    const v10, 0x7f0f0141

    invoke-virtual {v9, v10, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 180
    new-instance v2, Landroid/content/Intent;

    const-string v10, "android.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 181
    .local v2, "intentDeskClock":Landroid/content/Intent;
    const-string v10, "deskclock.select.tab"

    invoke-virtual {v2, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-static {p1, v12, v2, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 183
    .local v6, "piD":Landroid/app/PendingIntent;
    const v10, 0x7f0f013c

    invoke-virtual {v9, v10, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 187
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 188
    .local v1, "intentBrowserSearch":Landroid/content/Intent;
    const-string v10, "cn.nubia.browser"

    const-string v11, "com.android.browser.SearchActivity"

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 193
    const-string v10, "callFromWidget"

    invoke-virtual {v1, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 203
    invoke-static {p1, v12, v1, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 204
    .local v5, "piBrowser":Landroid/app/PendingIntent;
    const v10, 0x7f0f0147

    invoke-virtual {v9, v10, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 207
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->isNubiaSearchAvilible(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 208
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 209
    .local v3, "intentQRcode":Landroid/content/Intent;
    const-string v10, "cn.nubia.browser"

    const-string v11, "com.android.browser.qrcode.CaptureActivity"

    invoke-virtual {v3, v10, v11}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    const/high16 v10, 0x20000000

    invoke-virtual {v3, v10}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 212
    const-string v10, "callFromWidget"

    invoke-virtual {v3, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 219
    :cond_1
    :goto_1
    invoke-static {p1, v12, v3, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 220
    .local v7, "piQRcode":Landroid/app/PendingIntent;
    const v10, 0x7f0f0148

    invoke-virtual {v9, v10, v7}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 221
    invoke-direct {p0, p1, v9}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->updateTime(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 222
    invoke-virtual {p0, p1, v9}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 223
    new-instance v0, Landroid/content/ComponentName;

    const-class v10, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;

    invoke-direct {v0, p1, v10}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 224
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    invoke-virtual {v10, v0, v9}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_0

    .line 214
    .end local v0    # "componentName":Landroid/content/ComponentName;
    .end local v3    # "intentQRcode":Landroid/content/Intent;
    .end local v7    # "piQRcode":Landroid/app/PendingIntent;
    :cond_2
    new-instance v3, Landroid/content/Intent;

    const-string v10, "com.tencent.tmsbrowser.zxing.SCAN"

    invoke-direct {v3, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 215
    .restart local v3    # "intentQRcode":Landroid/content/Intent;
    invoke-direct {p0, p1, v3}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 216
    const-string v10, "com.android.browser.action.zxing.SCAN"

    invoke-virtual {v3, v10}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 27
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.nubia.themechanged"

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.NUBIA.WEATHER.UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.DATE_CHANGED"

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.TIME_SET"

    .line 33
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 34
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 35
    :cond_0
    move-object v1, p1

    .line 36
    .local v1, "iContext":Landroid/content/Context;
    new-instance v2, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider$1;

    invoke-direct {v2, p0, v1}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider$1;-><init>(Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;Landroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 47
    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 49
    .end local v1    # "iContext":Landroid/content/Context;
    :cond_1
    invoke-super {p0, p1, p2}, Lcn/nubia/weather/ui/widget/WidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 50
    return-void
.end method

.method protected setWidgetColor(Landroid/content/Context;[I[II)V
    .locals 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loc1"    # [I
    .param p3, "loc2"    # [I
    .param p4, "appWidgetId"    # I

    .prologue
    .line 53
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 54
    invoke-direct/range {p0 .. p1}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->initRemoteView(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v12

    .line 55
    .local v12, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v12, :cond_0

    .line 159
    :goto_0
    return-void

    .line 58
    :cond_0
    const/4 v3, 0x0

    .line 59
    .local v3, "grayValue":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e00ae

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 60
    .local v13, "widgetColor":I
    const-string v14, "WeatherWidgetProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setWidgetColor, location1: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, p2, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, p2, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "; location2: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x0

    aget v16, p3, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " ,"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const/16 v16, 0x1

    aget v16, p3, v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-static/range {p1 .. p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getWallColor(Landroid/content/Context;)I

    move-result v3

    .line 63
    const/16 v14, 0xbe

    if-le v3, v14, :cond_2

    .line 64
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0e00af

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    .line 65
    const v14, 0x7f0f013d

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 67
    const v14, 0x7f0f013e

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 68
    const v14, 0x7f0f013f

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 69
    const v14, 0x7f0f0142

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 70
    const v14, 0x7f0f0143

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 72
    const v14, 0x7f0f0147

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 73
    const v14, 0x7f0f0144

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 74
    const v14, 0x7f0f0146

    const v15, 0x7f020235

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 75
    const v14, 0x7f0f0148

    const v15, 0x7f020231

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 76
    const v14, 0x7f0f0145

    const-string v15, "setBackgroundResource"

    const v16, 0x7f020234

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 103
    :goto_1
    new-instance v7, Landroid/content/Intent;

    const-class v14, Lcn/nubia/weather/ui/activity/MainActivity;

    move-object/from16 v0, p1

    invoke-direct {v7, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 104
    .local v7, "intentWeather":Landroid/content/Intent;
    const-string v14, "WIDGET_ACTION"

    invoke-virtual {v7, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v7, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v11

    .line 106
    .local v11, "piW":Landroid/app/PendingIntent;
    const v14, 0x7f0f0141

    invoke-virtual {v12, v14, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 107
    const v14, 0x7f0f0140

    invoke-virtual {v12, v14, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 109
    new-instance v5, Landroid/content/Intent;

    const-string v14, "android.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v5, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 110
    .local v5, "intentDeskClock":Landroid/content/Intent;
    const-string v14, "deskclock.select.tab"

    const/4 v15, 0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 111
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v5, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v9

    .line 112
    .local v9, "piD":Landroid/app/PendingIntent;
    const v14, 0x7f0f013c

    invoke-virtual {v12, v14, v9}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 116
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 117
    .local v4, "intentBrowserSearch":Landroid/content/Intent;
    const-string v14, "cn.nubia.browser"

    const-string v15, "com.android.browser.SearchActivity"

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    const-string v14, "callFromWidget"

    const/4 v15, 0x1

    invoke-virtual {v4, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 131
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v12}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->updateTime(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v12}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 133
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v4, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 134
    .local v8, "piBrowser":Landroid/app/PendingIntent;
    const v14, 0x7f0f0147

    invoke-virtual {v12, v14, v8}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 137
    invoke-direct/range {p0 .. p1}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->isNubiaSearchAvilible(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 138
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 139
    .local v6, "intentQRcode":Landroid/content/Intent;
    const-string v14, "cn.nubia.browser"

    const-string v15, "com.android.browser.qrcode.CaptureActivity"

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    const/high16 v14, 0x20000000

    invoke-virtual {v6, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 142
    const-string v14, "callFromWidget"

    const/4 v15, 0x1

    invoke-virtual {v6, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 149
    :cond_1
    :goto_2
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v14, v6, v15}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 150
    .local v10, "piQRcode":Landroid/app/PendingIntent;
    const v14, 0x7f0f0148

    invoke-virtual {v12, v14, v10}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 151
    const/4 v14, -0x1

    move/from16 v0, p4

    if-ne v0, v14, :cond_4

    .line 152
    new-instance v2, Landroid/content/ComponentName;

    const-class v14, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;

    move-object/from16 v0, p1

    invoke-direct {v2, v0, v14}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 153
    .local v2, "componentName":Landroid/content/ComponentName;
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    invoke-virtual {v14, v2, v12}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 154
    const-string v14, "WeatherWidgetProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "update remoteViews "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 80
    .end local v2    # "componentName":Landroid/content/ComponentName;
    .end local v4    # "intentBrowserSearch":Landroid/content/Intent;
    .end local v5    # "intentDeskClock":Landroid/content/Intent;
    .end local v6    # "intentQRcode":Landroid/content/Intent;
    .end local v7    # "intentWeather":Landroid/content/Intent;
    .end local v8    # "piBrowser":Landroid/app/PendingIntent;
    .end local v9    # "piD":Landroid/app/PendingIntent;
    .end local v10    # "piQRcode":Landroid/app/PendingIntent;
    .end local v11    # "piW":Landroid/app/PendingIntent;
    :cond_2
    const v14, 0x7f0f013d

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 82
    const v14, 0x7f0f013e

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 83
    const v14, 0x7f0f013f

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 84
    const v14, 0x7f0f0142

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 85
    const v14, 0x7f0f0143

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 87
    const v14, 0x7f0f0147

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 88
    const v14, 0x7f0f0144

    invoke-virtual {v12, v14, v13}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 89
    const v14, 0x7f0f0146

    const v15, 0x7f020232

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 90
    const v14, 0x7f0f0148

    const v15, 0x7f020230

    invoke-virtual {v12, v14, v15}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 91
    const v14, 0x7f0f0145

    const-string v15, "setBackgroundResource"

    const v16, 0x7f020233

    move/from16 v0, v16

    invoke-virtual {v12, v14, v15, v0}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    goto/16 :goto_1

    .line 144
    .restart local v4    # "intentBrowserSearch":Landroid/content/Intent;
    .restart local v5    # "intentDeskClock":Landroid/content/Intent;
    .restart local v7    # "intentWeather":Landroid/content/Intent;
    .restart local v8    # "piBrowser":Landroid/app/PendingIntent;
    .restart local v9    # "piD":Landroid/app/PendingIntent;
    .restart local v11    # "piW":Landroid/app/PendingIntent;
    :cond_3
    new-instance v6, Landroid/content/Intent;

    const-string v14, "com.tencent.tmsbrowser.zxing.SCAN"

    invoke-direct {v6, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .restart local v6    # "intentQRcode":Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6}, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 146
    const-string v14, "com.android.browser.action.zxing.SCAN"

    invoke-virtual {v6, v14}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 156
    .restart local v10    # "piQRcode":Landroid/app/PendingIntent;
    :cond_4
    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    move/from16 v0, p4

    invoke-virtual {v14, v0, v12}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 157
    const-string v14, "WeatherWidgetProvider"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "update remoteViews "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p4

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
