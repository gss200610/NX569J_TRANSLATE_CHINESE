.class public Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;
.super Lcn/nubia/weather/ui/widget/WidgetProvider;
.source "WeatherSmallWidgetProvider.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherSmallWidgetProvider"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcn/nubia/weather/ui/widget/WidgetProvider;-><init>()V

    return-void
.end method

.method private initRemoteView(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 159
    const-string v2, "nubia.widget.NubiaTextClock"

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->isFontClassExisted(Ljava/lang/String;)Z

    move-result v0

    .line 160
    .local v0, "isNubiaTextClockExist":Z
    const/4 v1, 0x0

    .line 161
    .local v1, "remoteViews":Landroid/widget/RemoteViews;
    if-eqz v0, :cond_0

    .line 162
    new-instance v1, Landroid/widget/RemoteViews;

    .end local v1    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03005e

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 167
    .restart local v1    # "remoteViews":Landroid/widget/RemoteViews;
    :goto_0
    return-object v1

    .line 164
    :cond_0
    new-instance v1, Landroid/widget/RemoteViews;

    .end local v1    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f03005f

    invoke-direct {v1, v2, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .restart local v1    # "remoteViews":Landroid/widget/RemoteViews;
    goto :goto_0
.end method


# virtual methods
.method protected getWeatherDate(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x0

    .line 119
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 120
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->initRemoteView(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v5

    .line 121
    .local v5, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v5, :cond_0

    .line 144
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, p1, v5}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 132
    new-instance v2, Landroid/content/Intent;

    const-class v6, Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-direct {v2, p1, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 133
    .local v2, "intentWeather":Landroid/content/Intent;
    const-string v6, "WIDGET_ACTION"

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    invoke-static {p1, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 135
    .local v4, "piW":Landroid/app/PendingIntent;
    const v6, 0x7f0f0141

    invoke-virtual {v5, v6, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 137
    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v1, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 138
    .local v1, "intentDeskClock":Landroid/content/Intent;
    const-string v6, "deskclock.select.tab"

    const/4 v7, 0x1

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 139
    invoke-static {p1, v8, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 140
    .local v3, "piD":Landroid/app/PendingIntent;
    const v6, 0x7f0f013c

    invoke-virtual {v5, v6, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 142
    new-instance v0, Landroid/content/ComponentName;

    const-class v6, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;

    invoke-direct {v0, p1, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 143
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v6

    invoke-virtual {v6, v0, v5}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 24
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 26
    .local v0, "action":Ljava/lang/String;
    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "com.nubia.themechanged"

    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.NUBIA.WEATHER.UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.DATE_CHANGED"

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.TIME_SET"

    .line 30
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 31
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    :cond_0
    move-object v1, p1

    .line 33
    .local v1, "iContext":Landroid/content/Context;
    new-instance v2, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$1;

    invoke-direct {v2, p0, v1}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$1;-><init>(Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;Landroid/content/Context;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    .line 43
    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 59
    .end local v1    # "iContext":Landroid/content/Context;
    :cond_1
    invoke-super {p0, p1, p2}, Lcn/nubia/weather/ui/widget/WidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 60
    return-void
.end method

.method protected setWidgetColor(Landroid/content/Context;[I[II)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "loc1"    # [I
    .param p3, "loc2"    # [I
    .param p4, "appWidgetId"    # I

    .prologue
    const/4 v10, 0x0

    .line 63
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 64
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->initRemoteView(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v6

    .line 65
    .local v6, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v6, :cond_0

    .line 116
    :goto_0
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x0

    .line 69
    .local v1, "grayValue":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00ae

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 70
    .local v7, "widgetColor":I
    invoke-static {p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getWallColor(Landroid/content/Context;)I

    move-result v1

    .line 71
    const/16 v8, 0xbe

    if-le v1, v8, :cond_1

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0e00af

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    .line 77
    :cond_1
    const v8, 0x7f0f013d

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 81
    const v8, 0x7f0f0142

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 82
    const v8, 0x7f0f0143

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 83
    const v8, 0x7f0f0144

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 84
    const v8, 0x7f0f013e

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 85
    const v8, 0x7f0f013f

    invoke-virtual {v6, v8, v7}, Landroid/widget/RemoteViews;->setTextColor(II)V

    .line 93
    new-instance v3, Landroid/content/Intent;

    const-class v8, Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-direct {v3, p1, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v3, "intentWeather":Landroid/content/Intent;
    const-string v8, "WIDGET_ACTION"

    invoke-virtual {v3, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-static {p1, v10, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    .line 96
    .local v5, "piW":Landroid/app/PendingIntent;
    const v8, 0x7f0f0141

    invoke-virtual {v6, v8, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 97
    const v8, 0x7f0f0140

    invoke-virtual {v6, v8, v5}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 99
    new-instance v2, Landroid/content/Intent;

    const-string v8, "android.intent.action.NUBIA.TIMEMANAGER"

    invoke-direct {v2, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 100
    .local v2, "intentDeskClock":Landroid/content/Intent;
    const-string v8, "deskclock.select.tab"

    const/4 v9, 0x1

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    invoke-static {p1, v10, v2, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 102
    .local v4, "piD":Landroid/app/PendingIntent;
    const v8, 0x7f0f013c

    invoke-virtual {v6, v8, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 104
    invoke-virtual {p0, p1, v6}, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 105
    const/4 v8, -0x1

    if-ne p4, v8, :cond_2

    .line 106
    new-instance v0, Landroid/content/ComponentName;

    const-class v8, Lcn/nubia/weather/ui/widget/WeatherSmallWidgetProvider;

    invoke-direct {v0, p1, v8}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    .local v0, "componentName":Landroid/content/ComponentName;
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    invoke-virtual {v8, v0, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 110
    const-string v8, "WeatherSmallWidgetProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update remoteViews "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 112
    .end local v0    # "componentName":Landroid/content/ComponentName;
    :cond_2
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v8

    invoke-virtual {v8, p4, v6}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 113
    const-string v8, "WeatherSmallWidgetProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update remoteViews "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
