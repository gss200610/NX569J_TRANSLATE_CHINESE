.class public Lcn/nubia/weather/ui/widget/WidgetDataCache;
.super Ljava/lang/Object;
.source "WidgetDataCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;
    }
.end annotation


# static fields
.field public static final ACTION_WIDGET:Ljava/lang/String; = "android.intent.action.WIDGET"

.field public static final GRAY_MID_VALUE:I = 0xbe

.field public static final TAG:Ljava/lang/String; = "WidgetDataCache"

.field private static mInstance:Lcn/nubia/weather/ui/widget/WidgetDataCache;


# instance fields
.field public mAlarmLevel:Ljava/lang/String;

.field public mAlarmTime:Ljava/lang/String;

.field public mAlarmType:Ljava/lang/String;

.field public mCity:Ljava/lang/String;

.field public mCurrentTemp:Ljava/lang/String;

.field public mDayTemp:Ljava/lang/String;

.field public mDayType:Ljava/lang/String;

.field public mGmtOffset:Ljava/lang/String;

.field public mHightLowTemp:Ljava/lang/String;

.field public mHourWeatherIcon:[I

.field private mLastTAG:Ljava/lang/String;

.field public mNightTemp:Ljava/lang/String;

.field public mNightType:Ljava/lang/String;

.field public mSixDates:[Ljava/util/Date;

.field public mTempArray:[Ljava/lang/Integer;

.field public mWeatherType:Ljava/lang/String;

.field public mWindDirectionType:Ljava/lang/String;

.field public mWindForce:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-string v0, "--"

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 44
    const-string v0, "--"

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    .line 45
    const-string v0, "--/--"

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHightLowTemp:Ljava/lang/String;

    .line 46
    const-string v0, "--"

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    .line 47
    const-string v0, "--/--"

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindForce:Ljava/lang/String;

    .line 48
    const-string v0, "--/--"

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindDirectionType:Ljava/lang/String;

    .line 49
    const-string v0, "--"

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmType:Ljava/lang/String;

    .line 50
    const-string v0, "--"

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmLevel:Ljava/lang/String;

    .line 51
    const-string v0, "--"

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmTime:Ljava/lang/String;

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayType:Ljava/lang/String;

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightType:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayTemp:Ljava/lang/String;

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightTemp:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mTempArray:[Ljava/lang/Integer;

    .line 57
    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mSixDates:[Ljava/util/Date;

    .line 58
    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHourWeatherIcon:[I

    .line 59
    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;
    .locals 2

    .prologue
    .line 70
    const-class v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mInstance:Lcn/nubia/weather/ui/widget/WidgetDataCache;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;

    invoke-direct {v0}, Lcn/nubia/weather/ui/widget/WidgetDataCache;-><init>()V

    sput-object v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mInstance:Lcn/nubia/weather/ui/widget/WidgetDataCache;

    .line 73
    :cond_0
    sget-object v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mInstance:Lcn/nubia/weather/ui/widget/WidgetDataCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getWallColor(Landroid/content/Context;)I
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x0

    .line 290
    const/4 v7, 0x0

    .line 292
    .local v7, "result":Ljava/lang/Integer;
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    .line 293
    .local v8, "wManager":Landroid/app/WallpaperManager;
    const-class v10, Landroid/app/WallpaperManager;

    const-string v12, "clipBlurWallpaper"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/Context;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Landroid/graphics/Rect;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    invoke-virtual {v10, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 295
    .local v3, "getBlurWallPagerMethod":Ljava/lang/reflect/Method;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 296
    .local v1, "dMetrics":Landroid/util/DisplayMetrics;
    new-instance v6, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v12, 0x0

    iget v13, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v14, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v6, v10, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 297
    .local v6, "rect":Landroid/graphics/Rect;
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v10, v12

    const/4 v12, 0x1

    aput-object v6, v10, v12

    const/4 v12, 0x2

    const/16 v13, 0x5a

    .line 298
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v12

    .line 297
    invoke-virtual {v3, v8, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Bitmap;

    .line 299
    .local v9, "wallpaperBitmap":Landroid/graphics/Bitmap;
    const-string v10, "nubia.util.BitmapGrayUtil"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 300
    .local v5, "grayUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getGray"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/graphics/Bitmap;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v5, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 301
    .local v4, "getGrMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v10, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v12

    invoke-virtual {v4, v5, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/Integer;

    move-object v7, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v1    # "dMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "getBlurWallPagerMethod":Ljava/lang/reflect/Method;
    .end local v4    # "getGrMethod":Ljava/lang/reflect/Method;
    .end local v5    # "grayUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "rect":Landroid/graphics/Rect;
    .end local v8    # "wManager":Landroid/app/WallpaperManager;
    .end local v9    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v7, :cond_0

    move v10, v11

    .line 308
    :goto_1
    return v10

    .line 302
    :catch_0
    move-exception v2

    .line 303
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 308
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1
.end method

.method public static getWallColorWithCoordinates(Landroid/content/Context;[I[I)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ponitLeftTopPonit"    # [I
    .param p2, "pointBottomPoint"    # [I

    .prologue
    .line 313
    const/4 v6, 0x0

    .line 315
    .local v6, "result":Ljava/lang/Integer;
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    .line 316
    .local v7, "wManager":Landroid/app/WallpaperManager;
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 318
    .local v8, "wallpaperBitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 319
    const/4 v10, 0x0

    aget v10, p2, v10

    const/4 v11, 0x0

    aget v11, p1, v11

    sub-int v9, v10, v11

    .line 320
    .local v9, "width":I
    const/4 v10, 0x1

    aget v10, p2, v10

    const/4 v11, 0x1

    aget v11, p1, v11

    sub-int v4, v10, v11

    .line 321
    .local v4, "height":I
    if-lez v9, :cond_0

    if-lez v4, :cond_0

    .line 322
    const/4 v10, 0x0

    aget v10, p1, v10

    const/4 v11, 0x1

    aget v11, p1, v11

    invoke-static {v8, v10, v11, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 324
    .local v5, "partWallPaper":Landroid/graphics/Bitmap;
    const-string v10, "nubia.util.BitmapGrayUtil"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 325
    .local v3, "grayUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getGray"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/graphics/Bitmap;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 326
    .local v2, "getGrMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v2, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    .end local v2    # "getGrMethod":Ljava/lang/reflect/Method;
    .end local v3    # "grayUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "height":I
    .end local v5    # "partWallPaper":Landroid/graphics/Bitmap;
    .end local v7    # "wManager":Landroid/app/WallpaperManager;
    .end local v8    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "width":I
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 334
    const/4 v10, 0x0

    .line 336
    :goto_1
    return v10

    .line 329
    :catch_0
    move-exception v1

    .line 330
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 336
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1
.end method


# virtual methods
.method public initWeatherData(Landroid/content/Context;Lcn/nubia/weather/model/WeatherModel;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 176
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 177
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 180
    .local v2, "hour":I
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 181
    new-instance v4, Lcn/nubia/weather/ui/widget/WidgetDataCache$2;

    invoke-direct {v4, p0, p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache$2;-><init>(Lcn/nubia/weather/ui/widget/WidgetDataCache;Landroid/content/Context;)V

    new-array v5, v9, [Ljava/lang/Void;

    .line 191
    invoke-virtual {v4, v5}, Lcn/nubia/weather/ui/widget/WidgetDataCache$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 196
    :goto_0
    if-eqz p2, :cond_f

    .line 197
    invoke-virtual {p2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    .line 198
    iget-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 199
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    .line 201
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 202
    .local v1, "currentDate":Ljava/util/Date;
    invoke-virtual {v1, v9}, Ljava/util/Date;->setMinutes(I)V

    .line 203
    invoke-virtual {v1, v9}, Ljava/util/Date;->setSeconds(I)V

    .line 204
    invoke-static {v1, p2}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v3

    .line 207
    .local v3, "hourTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    .line 208
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 209
    const-string v4, "--/--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHightLowTemp:Ljava/lang/String;

    .line 210
    const-string v4, "--/--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindForce:Ljava/lang/String;

    .line 211
    const-string v4, "--/--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindDirectionType:Ljava/lang/String;

    .line 212
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmType:Ljava/lang/String;

    .line 213
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmLevel:Ljava/lang/String;

    .line 214
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmTime:Ljava/lang/String;

    .line 215
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayType:Ljava/lang/String;

    .line 216
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightType:Ljava/lang/String;

    .line 217
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayTemp:Ljava/lang/String;

    .line 218
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightTemp:Ljava/lang/String;

    .line 219
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mTempArray:[Ljava/lang/Integer;

    .line 220
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mSixDates:[Ljava/util/Date;

    .line 221
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHourWeatherIcon:[I

    .line 222
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 223
    invoke-static {p2}, Lcn/nubia/weather/utils/TimeUtils;->isDataUpToDate(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 287
    .end local v1    # "currentDate":Ljava/util/Date;
    .end local v3    # "hourTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :goto_1
    return-void

    .line 193
    :cond_1
    const-string v4, "widget_cache_init_time_long"

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 193
    invoke-static {p1, v4, v6, v7}, Lcn/nubia/weather/utils/PreferenceUtils;->setSettingLongByCommit(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 226
    .restart local v1    # "currentDate":Ljava/util/Date;
    .restart local v3    # "hourTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_2
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 227
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    .line 230
    :cond_3
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 231
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 233
    :cond_4
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmHightLowTemp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 234
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmHightLowTemp()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHightLowTemp:Ljava/lang/String;

    .line 236
    :cond_5
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmWindForce()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 237
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmWindForce()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindForce:Ljava/lang/String;

    .line 239
    :cond_6
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmWindDirectionType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 240
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmWindDirectionType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindDirectionType:Ljava/lang/String;

    .line 242
    :cond_7
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmAlarmType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 243
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmAlarmType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmType:Ljava/lang/String;

    .line 245
    :cond_8
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmAlarmTime()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 246
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmAlarmTime()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmTime:Ljava/lang/String;

    .line 248
    :cond_9
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmAlarmLevel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 249
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmAlarmLevel()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmLevel:Ljava/lang/String;

    .line 251
    :cond_a
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDayType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 252
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDayType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayType:Ljava/lang/String;

    .line 254
    :cond_b
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmNightType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 255
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmNightType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightType:Ljava/lang/String;

    .line 257
    :cond_c
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDayTemp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 258
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDayTemp()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayTemp:Ljava/lang/String;

    .line 260
    :cond_d
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmNightTemp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 261
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmNightTemp()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightTemp:Ljava/lang/String;

    .line 263
    :cond_e
    invoke-virtual {p2}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 264
    invoke-virtual {p0, p2}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->setHours(Lcn/nubia/weather/model/WeatherModel;)V

    goto/16 :goto_1

    .line 267
    .end local v1    # "currentDate":Ljava/util/Date;
    .end local v3    # "hourTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_f
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayType:Ljava/lang/String;

    .line 268
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightType:Ljava/lang/String;

    .line 269
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayTemp:Ljava/lang/String;

    .line 270
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightTemp:Ljava/lang/String;

    .line 271
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 272
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    .line 273
    const-string v4, "--/--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHightLowTemp:Ljava/lang/String;

    .line 274
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    .line 275
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    .line 276
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 277
    const-string v4, "--/--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindForce:Ljava/lang/String;

    .line 278
    const-string v4, "--/--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindDirectionType:Ljava/lang/String;

    .line 279
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmType:Ljava/lang/String;

    .line 280
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmLevel:Ljava/lang/String;

    .line 281
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmTime:Ljava/lang/String;

    .line 282
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mTempArray:[Ljava/lang/Integer;

    .line 283
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mSixDates:[Ljava/util/Date;

    .line 284
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHourWeatherIcon:[I

    .line 285
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public initWeatherDataAsync(Landroid/content/Context;Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;

    .prologue
    .line 128
    invoke-static {p1}, Lcn/nubia/weather/data/CityOrderCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/CityOrderCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/data/CityOrderCenter;->getCitysOrder()Ljava/util/List;

    move-result-object v1

    .line 129
    .local v1, "cityOrder":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;>;"
    const/4 v0, 0x0

    .line 130
    .local v0, "areaID":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;

    invoke-virtual {v3}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    .line 134
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 135
    invoke-static {p1}, Lcn/nubia/weather/persistent/WeatherStore;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/persistent/WeatherStore;

    move-result-object v2

    .line 137
    .local v2, "mStore":Lcn/nubia/weather/persistent/IPersistenter;
    new-instance v3, Lcn/nubia/weather/ui/widget/WidgetDataCache$1;

    invoke-direct {v3, p0, p1, p2}, Lcn/nubia/weather/ui/widget/WidgetDataCache$1;-><init>(Lcn/nubia/weather/ui/widget/WidgetDataCache;Landroid/content/Context;Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;)V

    invoke-interface {v2, v0, v3}, Lcn/nubia/weather/persistent/IPersistenter;->getWeatherInfoByIDV2(Ljava/lang/String;Lcn/nubia/weather/persistent/QueryCallback;)V

    .line 154
    .end local v2    # "mStore":Lcn/nubia/weather/persistent/IPersistenter;
    :cond_1
    return-void
.end method

.method public initWeatherDataFromDB(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 157
    invoke-static {p1}, Lcn/nubia/weather/data/CityOrderCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/CityOrderCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/data/CityOrderCenter;->getCitysOrder()Ljava/util/List;

    move-result-object v1

    .line 158
    .local v1, "cityOrder":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;>;"
    const/4 v0, 0x0

    .line 159
    .local v0, "areaID":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 160
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;

    invoke-virtual {v4}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 165
    invoke-static {p1}, Lcn/nubia/weather/persistent/WeatherStore;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/persistent/WeatherStore;

    move-result-object v2

    .line 166
    .local v2, "mStore":Lcn/nubia/weather/persistent/WeatherStore;
    invoke-static {v0, p1}, Lcn/nubia/weather/persistent/DBHelper;->getWeatherModelByID(Ljava/lang/String;Landroid/content/Context;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v3

    .line 167
    .local v3, "model":Lcn/nubia/weather/model/WeatherModel;
    const-string v4, "WidgetDataCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWeatherInfoByID from db areaid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0, p1, v3}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherData(Landroid/content/Context;Lcn/nubia/weather/model/WeatherModel;)V

    .line 169
    const/4 v4, 0x1

    .line 171
    .end local v2    # "mStore":Lcn/nubia/weather/persistent/WeatherStore;
    .end local v3    # "model":Lcn/nubia/weather/model/WeatherModel;
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method public initWeatherDataSync(Landroid/content/Context;)Z
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 77
    invoke-static {p1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcn/nubia/weather/data/DataCenter;->getWeather(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v6

    .line 78
    .local v6, "model":Lcn/nubia/weather/model/WeatherModel;
    const-string v7, ""

    .line 79
    .local v7, "tag":Ljava/lang/String;
    invoke-static {p1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v10

    if-nez v10, :cond_2

    .line 80
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataFromDB(Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 123
    :cond_0
    :goto_0
    return v8

    .line 83
    :cond_1
    const-string v8, "WidgetDataCache"

    const-string v10, "Datacenter not ready, check db"

    invoke-static {v8, v10}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .line 84
    goto :goto_0

    .line 87
    :cond_2
    if-eqz v6, :cond_6

    .line 90
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v6}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 95
    :goto_1
    iget-object v9, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_3

    iget-object v9, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 96
    :cond_3
    const-string v9, "widget_Cache_Time"

    const-string v10, ""

    invoke-static {p1, v9, v10}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    .line 99
    :cond_4
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 103
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 104
    .local v1, "currentTime":Ljava/util/Date;
    const-string v9, "widget_cache_init_time_long"

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 104
    invoke-static {p1, v9, v10, v11}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v4

    .line 106
    .local v4, "lastInitLong":J
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 108
    .local v3, "lastInitTime":Ljava/util/Date;
    iget-object v9, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-static {v3, v1}, Lcn/nubia/weather/utils/TimeUtils;->isSameHour(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 109
    :cond_5
    const-string v9, "WidgetDataCache"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "initWeatherData: tag "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mLastTAG"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, p1, v6}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherData(Landroid/content/Context;Lcn/nubia/weather/model/WeatherModel;)V

    .line 111
    const-string v9, "widget_Cache_Time"

    invoke-static {p1, v9, v7}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iput-object v7, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    .line 114
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 115
    .local v2, "intent":Landroid/content/Intent;
    const-string v9, "android.intent.action.NUBIA.WEATHER.UPDATE"

    invoke-virtual {v2, v9}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    const/high16 v9, 0x10000000

    invoke-virtual {v2, v9}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 117
    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 92
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "currentTime":Ljava/util/Date;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "lastInitTime":Ljava/util/Date;
    .end local v4    # "lastInitLong":J
    :cond_6
    const-string v9, "WidgetDataCache"

    const-string v10, "initWeatherDataSync: MODEL IS NULL"

    invoke-static {v9, v10}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 118
    .restart local v0    # "cal":Ljava/util/Calendar;
    .restart local v1    # "currentTime":Ljava/util/Date;
    .restart local v3    # "lastInitTime":Ljava/util/Date;
    .restart local v4    # "lastInitLong":J
    :cond_7
    iget-object v9, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    const-string v10, "--"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz v6, :cond_0

    .line 120
    invoke-virtual {p0, p1, v6}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherData(Landroid/content/Context;Lcn/nubia/weather/model/WeatherModel;)V

    goto/16 :goto_0
.end method

.method public setHours(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 18
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 344
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v15

    invoke-virtual {v15}, Lcn/nubia/weather/model/HourfcModel;->getmHours()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 345
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 346
    const/4 v5, 0x6

    .line 347
    .local v5, "hourSize":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 350
    .local v6, "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    new-array v4, v5, [Ljava/util/Date;

    .line 352
    .local v4, "hourDates":[Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 353
    .local v12, "timeMillis":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 354
    .local v2, "currentDate":Ljava/util/Date;
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/Date;->setMinutes(I)V

    .line 355
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/Date;->setSeconds(I)V

    .line 356
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v5, :cond_0

    .line 357
    new-instance v15, Ljava/util/Date;

    const v16, 0x36ee80

    mul-int v16, v16, v8

    mul-int/lit8 v16, v16, 0x2

    move/from16 v0, v16

    int-to-long v0, v0

    move-wide/from16 v16, v0

    add-long v16, v16, v12

    invoke-direct/range {v15 .. v17}, Ljava/util/Date;-><init>(J)V

    aput-object v15, v4, v8

    .line 358
    aget-object v15, v4, v8

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/Date;->setMinutes(I)V

    .line 359
    aget-object v15, v4, v8

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Ljava/util/Date;->setSeconds(I)V

    .line 361
    aget-object v15, v4, v8

    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v10

    .line 363
    .local v10, "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 366
    .end local v10    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_0
    new-array v7, v5, [I

    .line 367
    .local v7, "hourWeatherIcon":[I
    new-array v11, v5, [Ljava/lang/Integer;

    .line 368
    .local v11, "tempArray":[Ljava/lang/Integer;
    const/4 v9, 0x0

    .local v9, "index":I
    :goto_1
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v15

    if-ge v9, v15, :cond_2

    .line 369
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v15}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 370
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v15}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v15

    if-eqz v15, :cond_1

    .line 371
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v15}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v14

    .line 372
    .local v14, "weatherType":I
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v15}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDate()Ljava/util/Date;

    move-result-object v3

    .line 373
    .local v3, "date":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 374
    invoke-static {v3, v15}, Lcn/nubia/weather/utils/CalendarUtil;->isTimeNightByTimezone(Ljava/util/Date;Ljava/lang/String;)Z

    move-result v15

    .line 373
    invoke-static {v14, v15}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherPressIcon(IZ)I

    move-result v15

    aput v15, v7, v9

    .line 375
    invoke-interface {v6, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v15}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v11, v9

    .line 368
    .end local v3    # "date":Ljava/util/Date;
    .end local v14    # "weatherType":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 379
    :cond_2
    move-object/from16 v0, p0

    iput-object v7, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHourWeatherIcon:[I

    .line 380
    move-object/from16 v0, p0

    iput-object v11, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mTempArray:[Ljava/lang/Integer;

    .line 381
    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mSixDates:[Ljava/util/Date;

    .line 383
    .end local v2    # "currentDate":Ljava/util/Date;
    .end local v4    # "hourDates":[Ljava/util/Date;
    .end local v5    # "hourSize":I
    .end local v6    # "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    .end local v7    # "hourWeatherIcon":[I
    .end local v8    # "i":I
    .end local v9    # "index":I
    .end local v11    # "tempArray":[Ljava/lang/Integer;
    .end local v12    # "timeMillis":J
    :cond_3
    return-void
.end method
