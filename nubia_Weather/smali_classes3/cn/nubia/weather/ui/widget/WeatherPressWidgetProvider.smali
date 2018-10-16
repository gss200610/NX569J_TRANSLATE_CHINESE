.class public Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WeatherPressWidgetProvider.java"


# static fields
.field protected static final DESKCLOCK:Ljava/lang/String; = "android.intent.action.NUBIA.TIMEMANAGER"

.field protected static final MESSAGE_UPDATE_WEATHER:I = 0x14000001

.field private static final TAG:Ljava/lang/String; = "WeatherPressWidgetProvider"

.field protected static final WEATHER_UPDATE:Ljava/lang/String; = "android.intent.action.NUBIA.WEATHER.UPDATE"


# instance fields
.field private mInfo:Landroid/content/pm/LauncherActivityInfo;

.field private mcontext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;

    .prologue
    .line 31
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->mcontext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->getActivityList(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;Landroid/content/Context;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->freshenUi(Landroid/content/Context;)V

    return-void
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 54
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 55
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 54
    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 56
    .local v0, "b":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 57
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {p1, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 58
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 59
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 60
    return-object v0
.end method

.method private freshenUi(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const/4 v1, 0x0

    .line 96
    .local v1, "biticon":Landroid/graphics/Bitmap;
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->initRemoteView(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v3

    .line 97
    .local v3, "remoteViews":Landroid/widget/RemoteViews;
    if-nez v3, :cond_0

    .line 113
    :goto_0
    return-void

    .line 101
    :cond_0
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p0, v4}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-direct {p0, v4}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 105
    :goto_1
    if-eqz v1, :cond_1

    .line 106
    const v4, 0x7f0f0075

    invoke-virtual {v3, v4, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 108
    :cond_1
    invoke-virtual {p0, p1, v3}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    .line 109
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 110
    .local v0, "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    new-instance v4, Landroid/content/ComponentName;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v4, v3}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto :goto_0

    .line 102
    .end local v0    # "appWidgetManager":Landroid/appwidget/AppWidgetManager;
    :catch_0
    move-exception v2

    .line 103
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private getActivityList(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    const-string v5, "launcherapps"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    .line 73
    .local v0, "Launcher":Landroid/content/pm/LauncherApps;
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v4

    .line 74
    .local v4, "user":Landroid/os/UserHandle;
    const-string v3, "cn.nubia.weather"

    .line 75
    .local v3, "packageName":Ljava/lang/String;
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v2

    .line 76
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/LauncherActivityInfo;>;"
    const/4 v1, 0x0

    .line 77
    .local v1, "info":Landroid/content/pm/LauncherActivityInfo;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_0

    .line 78
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/LauncherActivityInfo;

    iput-object v5, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    .line 80
    :cond_0
    return-void
.end method

.method private initRemoteView(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 145
    const/4 v0, 0x0

    .line 146
    .local v0, "remoteViews":Landroid/widget/RemoteViews;
    new-instance v0, Landroid/widget/RemoteViews;

    .end local v0    # "remoteViews":Landroid/widget/RemoteViews;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03001b

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 147
    .restart local v0    # "remoteViews":Landroid/widget/RemoteViews;
    return-object v0
.end method

.method private performUpdate(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 116
    iput-object p1, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->mcontext:Landroid/content/Context;

    .line 133
    new-instance v0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;

    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;-><init>(Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 141
    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 142
    return-void
.end method

.method private setEmptyView(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    const v1, 0x7f0f008a

    .line 257
    const v0, 0x7f0900b6

    .line 258
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 257
    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 259
    const/4 v0, 0x0

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 260
    const v0, 0x7f0f0077

    const/4 v1, 0x4

    invoke-virtual {p2, v0, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 261
    return-void
.end method


# virtual methods
.method public getBadgedIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "density"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    if-nez v0, :cond_0

    .line 65
    const/4 v0, 0x0

    .line 67
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->mInfo:Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/LauncherActivityInfo;->getBadgedIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 85
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    const-string v2, "WeatherPressWidgetProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onRecevice "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v2, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.NUBIA.WEATHER.UPDATE"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.TIMEZONE_CHANGED"

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.TIME_SET"

    .line 45
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    .line 46
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 47
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcn/nubia/weather/ui/widget/WeatherWidgetProvider;

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->performUpdate(Landroid/content/Context;)V

    .line 50
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 51
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 89
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->performUpdate(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method protected updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 152
    const/4 v15, 0x0

    .line 153
    .local v15, "tempArray":[Ljava/lang/Integer;
    const/4 v12, 0x0

    .line 154
    .local v12, "sixDates":[Ljava/util/Date;
    const/4 v13, 0x0

    .line 155
    .local v13, "sixHours":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 156
    .local v5, "hourWeatherIcon":[I
    new-instance v9, Landroid/content/Intent;

    const-class v17, Lcn/nubia/weather/ui/activity/MainActivity;

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 157
    .local v9, "intentWeather":Landroid/content/Intent;
    const-string v17, "WIDGET_ACTION"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const/4 v11, 0x0

    .line 159
    .local v11, "piW":Landroid/app/PendingIntent;
    const/4 v4, 0x0

    .line 161
    .local v4, "gmtOffset":Ljava/lang/String;
    const/16 v17, 0x0

    const/16 v18, 0x0

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-static {v0, v1, v9, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 165
    :goto_0
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    .line 166
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    move-object/from16 v17, v0

    const-string v18, "--"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 167
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 168
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    move-object/from16 v17, v0

    const v18, 0x7f090166

    .line 169
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    .line 168
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 170
    :cond_0
    if-eqz v11, :cond_1

    .line 171
    const v17, 0x7f0f0074

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 173
    :cond_1
    const v17, 0x7f0f008a

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 174
    const v17, 0x7f0f0077

    const/16 v18, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 175
    const v17, 0x7f0f008a

    const v18, 0x7f0900ea

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 253
    :goto_1
    return-void

    .line 162
    :catch_0
    move-exception v3

    .line 163
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 178
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz v11, :cond_3

    .line 179
    const v17, 0x7f0f0073

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v11}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 181
    :cond_3
    const v17, 0x7f0f0076

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const v19, 0x7f090137

    .line 183
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u2014"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    .line 184
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v19

    move-object/from16 v0, v19

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 181
    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 185
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v15, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mTempArray:[Ljava/lang/Integer;

    .line 186
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v12, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mSixDates:[Ljava/util/Date;

    .line 187
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v4, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 188
    if-eqz v12, :cond_6

    .line 189
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    new-array v13, v0, [Ljava/lang/String;

    .line 190
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_2
    array-length v0, v12

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v6, v0, :cond_4

    .line 191
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v17

    .line 192
    invoke-virtual/range {v17 .. v17}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v17

    aget-object v18, v12, v6

    .line 191
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v4}, Lcn/nubia/weather/utils/TimeUtils;->getHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v6

    .line 190
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 195
    :cond_4
    array-length v0, v12

    move/from16 v17, v0

    add-int/lit8 v6, v17, -0x1

    :goto_3
    if-lez v6, :cond_6

    .line 196
    aget-object v17, v13, v6

    if-eqz v17, :cond_5

    .line 197
    aget-object v17, v13, v6

    const/16 v18, 0x0

    const/16 v19, 0x2

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    add-int/lit8 v18, v6, -0x1

    aget-object v18, v13, v18

    const/16 v19, 0x0

    const/16 v20, 0x2

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    .line 198
    aget-object v17, v13, v6

    const/16 v18, 0x2

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v13, v6

    .line 195
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 204
    .end local v6    # "i":I
    :cond_6
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v5, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHourWeatherIcon:[I

    .line 208
    if-eqz v15, :cond_b

    if-eqz v13, :cond_b

    if-eqz v5, :cond_b

    .line 212
    const v17, 0x7f0f0079

    const/16 v18, 0x0

    aget-object v18, v13, v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 213
    const v17, 0x7f0f007a

    const/16 v18, 0x1

    aget-object v18, v13, v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 214
    const v17, 0x7f0f007b

    const/16 v18, 0x2

    aget-object v18, v13, v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 215
    const v17, 0x7f0f007c

    const/16 v18, 0x3

    aget-object v18, v13, v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 216
    const v17, 0x7f0f007d

    const/16 v18, 0x4

    aget-object v18, v13, v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 217
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 221
    .local v16, "tempIds":[I
    const/16 v17, 0x5

    move/from16 v0, v17

    new-array v8, v0, [I

    fill-array-data v8, :array_1

    .line 225
    .local v8, "iconIds":[I
    const/4 v10, 0x1

    .line 226
    .local v10, "isAllNull":Z
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_4
    array-length v0, v15

    move/from16 v17, v0

    add-int/lit8 v17, v17, -0x1

    move/from16 v0, v17

    if-ge v6, v0, :cond_9

    .line 227
    aget-object v14, v15, v6

    .line 228
    .local v14, "temp":Ljava/lang/Integer;
    aget v7, v5, v6

    .line 229
    .local v7, "icon":I
    if-eqz v14, :cond_7

    .line 230
    aget v17, v16, v6

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "\u00b0"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p2

    move/from16 v1, v17

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 231
    if-eqz v10, :cond_7

    .line 232
    const/4 v10, 0x0

    .line 235
    :cond_7
    if-nez v7, :cond_8

    .line 236
    aget v17, v8, v6

    const v18, 0x7f0201ea

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 226
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 238
    :cond_8
    aget v17, v8, v6

    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1, v7}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_5

    .line 241
    .end local v7    # "icon":I
    .end local v14    # "temp":Ljava/lang/Integer;
    :cond_9
    if-eqz v10, :cond_a

    .line 242
    invoke-direct/range {p0 .. p2}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->setEmptyView(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 245
    :cond_a
    const v17, 0x7f0f008a

    const/16 v18, 0x4

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 246
    const v17, 0x7f0f0077

    const/16 v18, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto/16 :goto_1

    .line 248
    .end local v6    # "i":I
    .end local v8    # "iconIds":[I
    .end local v10    # "isAllNull":Z
    .end local v16    # "tempIds":[I
    :cond_b
    invoke-direct/range {p0 .. p2}, Lcn/nubia/weather/ui/widget/WeatherPressWidgetProvider;->setEmptyView(Landroid/content/Context;Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    .line 217
    :array_0
    .array-data 4
        0x7f0f0085
        0x7f0f0086
        0x7f0f0087
        0x7f0f0088
        0x7f0f0089
    .end array-data

    .line 221
    :array_1
    .array-data 4
        0x7f0f007f
        0x7f0f0080
        0x7f0f0081
        0x7f0f0082
        0x7f0f0083
    .end array-data
.end method
