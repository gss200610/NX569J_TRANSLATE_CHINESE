.class public Lcn/nubia/weather/app/WeatherApplication;
.super Landroid/app/Application;
.source "WeatherApplication.java"


# static fields
.field private static TAG:Ljava/lang/String;

.field private static instance:Lcn/nubia/weather/app/WeatherApplication;


# instance fields
.field private isCtaDisable:I

.field private isInited:Z

.field private isOneHand:Z

.field private isSupportCta:Z

.field private isSupportReyun:Z

.field private isSupportUmeng:Z

.field private isSupportUpgrade:Z

.field private mContext:Landroid/content/Context;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mTypefaceOrigin:Landroid/graphics/Typeface;

.field private mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

.field private mWeatherAnimationAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const-string v0, "WeatherApplication"

    sput-object v0, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isCtaDisable:I

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isOneHand:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimationAlpha:F

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/app/WeatherApplication;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;

    .prologue
    .line 35
    invoke-direct {p0}, Lcn/nubia/weather/app/WeatherApplication;->initFeatureSwitch()V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/weather/app/WeatherApplication;I)I
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;
    .param p1, "x1"    # I

    .prologue
    .line 35
    iput p1, p0, Lcn/nubia/weather/app/WeatherApplication;->isCtaDisable:I

    return p1
.end method

.method static synthetic access$200(Lcn/nubia/weather/app/WeatherApplication;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$202(Lcn/nubia/weather/app/WeatherApplication;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;
    .param p1, "x1"    # Landroid/graphics/Typeface;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/weather/app/WeatherApplication;->mTypeface:Landroid/graphics/Typeface;

    return-object p1
.end method

.method static synthetic access$300(Lcn/nubia/weather/app/WeatherApplication;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/app/WeatherApplication;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;

    .prologue
    .line 35
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mTypefaceOrigin:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/weather/app/WeatherApplication;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/app/WeatherApplication;
    .param p1, "x1"    # Landroid/graphics/Typeface;

    .prologue
    .line 35
    iput-object p1, p0, Lcn/nubia/weather/app/WeatherApplication;->mTypefaceOrigin:Landroid/graphics/Typeface;

    return-object p1
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/weather/app/WeatherApplication;
    .locals 2

    .prologue
    .line 138
    const-class v0, Lcn/nubia/weather/app/WeatherApplication;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/nubia/weather/app/WeatherApplication;->instance:Lcn/nubia/weather/app/WeatherApplication;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initFeatureSwitch()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 192
    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta:Z

    .line 193
    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUpgrade:Z

    .line 194
    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUmeng:Z

    .line 195
    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportReyun:Z

    .line 197
    const-string v1, "true"

    const-string v2, "weather_feature"

    const-string v3, "true"

    invoke-static {v2, v3}, Lcn/nubia/config/android/NubiaFeatureConfig;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 199
    .local v0, "isFeatureOn":Z
    if-eqz v0, :cond_0

    .line 200
    const-string v1, "true"

    const-string v2, "weather_feature"

    const-string v3, "weather_ctaSwitch"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta:Z

    .line 202
    const-string v1, "true"

    const-string v2, "weather_feature"

    const-string v3, "weather_apkupdate"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUpgrade:Z

    .line 204
    const-string v1, "true"

    const-string v2, "weather_feature"

    const-string v3, "weather_umengSwitch"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUmeng:Z

    .line 206
    const-string v1, "true"

    const-string v2, "weather_feature"

    const-string v3, "weather_reyunSwitch"

    const-string v4, "true"

    invoke-static {v2, v3, v4}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportReyun:Z

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFeatureSwitch isSupportCta:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSupportUpgrade"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUpgrade:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSupportUmeng"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUmeng:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isSupportReyun"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportReyun:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;)V

    .line 212
    :cond_0
    return-void
.end method


# virtual methods
.method public clearWeatherAnimation()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v0, :cond_0

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 161
    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIsCtaDisable()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isCtaDisable:I

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getWeatherAnimation()Lcom/bluestareffects/app/weather/api/WeatherAnimation;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    return-object v0
.end method

.method public getWeatherAnimationAlpha()F
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimationAlpha:F

    return v0
.end method

.method public getWidthPixels()I
    .locals 4

    .prologue
    .line 127
    iget-object v2, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 128
    .local v1, "manager":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 129
    .local v0, "dm":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 130
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v2, v3, :cond_0

    .line 131
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 133
    :goto_0
    return v2

    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method public getmTypefaceOrigin()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mTypefaceOrigin:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public isInited()Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isInited:Z

    return v0
.end method

.method public isOneHand()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isOneHand:Z

    return v0
.end method

.method public isSupportCta()Z
    .locals 1

    .prologue
    .line 215
    iget-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta:Z

    return v0
.end method

.method public isSupportReyun()Z
    .locals 1

    .prologue
    .line 227
    iget-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportReyun:Z

    return v0
.end method

.method public isSupportUmeng()Z
    .locals 1

    .prologue
    .line 223
    iget-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUmeng:Z

    return v0
.end method

.method public isSupportUpgrade()Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isSupportUpgrade:Z

    return v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 73
    sget-object v0, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    const-string v1, "Application start, Enter WeatherApplicaiton onCreate"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 75
    sput-object p0, Lcn/nubia/weather/app/WeatherApplication;->instance:Lcn/nubia/weather/app/WeatherApplication;

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/app/WeatherApplication;->isInited:Z

    .line 77
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    .line 78
    iget-object v0, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 79
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/data/CityOrderCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/CityOrderCenter;

    .line 80
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    .line 81
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/data/NotifyCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/NotifyCenter;

    .line 82
    invoke-virtual {p0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    .line 83
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/weather/app/WeatherApplication$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/app/WeatherApplication$1;-><init>(Lcn/nubia/weather/app/WeatherApplication;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 119
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 120
    return-void
.end method

.method public refreshUpdateAlarm()V
    .locals 14

    .prologue
    .line 164
    iget-object v9, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    const-string v10, "LAST_UPDATE_ALARM_TIME"

    const-wide/16 v12, 0x0

    invoke-static {v9, v10, v12, v13}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 165
    .local v4, "nextTime":J
    const-wide/16 v10, 0x0

    cmp-long v9, v4, v10

    if-nez v9, :cond_1

    .line 166
    sget-object v9, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    const-string v10, "first time"

    invoke-static {v9, v10}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    new-instance v8, Landroid/content/Intent;

    iget-object v9, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    const-class v10, Lcn/nubia/weather/service/UpdateService;

    invoke-direct {v8, v9, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 168
    .local v8, "updateServiceIntent":Landroid/content/Intent;
    const-string v9, "cn.nubia.weather.TYPE_UPDATE_ALL_CITY_WEATHER"

    invoke-virtual {v8, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget-object v9, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v8}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 189
    .end local v8    # "updateServiceIntent":Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    .line 170
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v4, v10

    const-wide/32 v12, 0x6ddd00

    cmp-long v9, v10, v12

    if-gtz v9, :cond_2

    .line 171
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v10, v4, v10

    const-wide/16 v12, 0x0

    cmp-long v9, v10, v12

    if-gez v9, :cond_0

    .line 173
    :cond_2
    :try_start_0
    const-string v9, "alarm"

    invoke-virtual {p0, v9}, Lcn/nubia/weather/app/WeatherApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 175
    .local v1, "manager":Landroid/app/AlarmManager;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x6ddd00

    add-long v6, v10, v12

    .line 176
    .local v6, "triggerTime":J
    sget-object v9, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Next UpdateService will be startted at time ["

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "]"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    new-instance v2, Landroid/content/Intent;

    const-class v9, Lcn/nubia/weather/utils/AlarmReceiver;

    invoke-direct {v2, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 178
    .local v2, "newIntent":Landroid/content/Intent;
    const-string v9, "cn.nubia.weather.TYPE_UPDATE_ALL_CITY_WEATHER"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    sget-object v9, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "newIntent = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static {p0, v9, v2, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 182
    .local v3, "pi":Landroid/app/PendingIntent;
    const/4 v9, 0x1

    invoke-virtual {v1, v9, v6, v7, v3}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 183
    iget-object v9, p0, Lcn/nubia/weather/app/WeatherApplication;->mContext:Landroid/content/Context;

    const-string v10, "LAST_UPDATE_ALARM_TIME"

    invoke-static {v9, v10, v6, v7}, Lcn/nubia/weather/utils/PreferenceUtils;->setSettingLong(Landroid/content/Context;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 185
    .end local v1    # "manager":Landroid/app/AlarmManager;
    .end local v2    # "newIntent":Landroid/content/Intent;
    .end local v3    # "pi":Landroid/app/PendingIntent;
    .end local v6    # "triggerTime":J
    :catch_0
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    sget-object v9, Lcn/nubia/weather/app/WeatherApplication;->TAG:Ljava/lang/String;

    const-string v10, "refreshUpdateAlarm"

    invoke-static {v9, v10, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0
.end method

.method public setInited(Z)V
    .locals 0
    .param p1, "isInit"    # Z

    .prologue
    .line 64
    iput-boolean p1, p0, Lcn/nubia/weather/app/WeatherApplication;->isInited:Z

    .line 65
    return-void
.end method

.method public setOneHand(Z)V
    .locals 0
    .param p1, "isOneHand"    # Z

    .prologue
    .line 235
    iput-boolean p1, p0, Lcn/nubia/weather/app/WeatherApplication;->isOneHand:Z

    .line 236
    return-void
.end method

.method public setWeatherAnimation(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)V
    .locals 0
    .param p1, "anim"    # Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .prologue
    .line 154
    iput-object p1, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 155
    return-void
.end method

.method public setWeatherAnimationAlpha(F)V
    .locals 0
    .param p1, "mWeatherAnimationAlpha"    # F

    .prologue
    .line 56
    iput p1, p0, Lcn/nubia/weather/app/WeatherApplication;->mWeatherAnimationAlpha:F

    .line 57
    return-void
.end method
