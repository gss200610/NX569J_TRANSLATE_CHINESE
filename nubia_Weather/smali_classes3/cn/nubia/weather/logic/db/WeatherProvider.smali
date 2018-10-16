.class public Lcn/nubia/weather/logic/db/WeatherProvider;
.super Landroid/content/ContentProvider;
.source "WeatherProvider.java"


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "cn.nubia.weather.logic.db.WeatherProvider"

.field private static final CITYS:I = 0x1

.field public static final CITY_CONTENT_URI:Landroid/net/Uri;

.field private static final CITY_ID:I = 0x2

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/city"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/city"

.field private static final HOTCITYS:I = 0x3

.field public static final HOTCITY_CONTENT_URI:Landroid/net/Uri;

.field private static final HOTCITY_ID:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WeatherProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;

.field private static final WEATHERFORECAST:I = 0x5

.field private static final WEATHERFORECAST_ID:I = 0x6

.field public static final WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;


# instance fields
.field private mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 25
    const-string v0, "content://cn.nubia.weather.logic.db.WeatherProvider/City"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->CITY_CONTENT_URI:Landroid/net/Uri;

    .line 27
    const-string v0, "content://cn.nubia.weather.logic.db.WeatherProvider/HotCity"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->HOTCITY_CONTENT_URI:Landroid/net/Uri;

    .line 29
    const-string v0, "content://cn.nubia.weather.logic.db.WeatherProvider/WeatherForecastv2"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    .line 32
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    .line 44
    sget-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.weather.logic.db.WeatherProvider"

    const-string v2, "City"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    sget-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.weather.logic.db.WeatherProvider"

    const-string v2, "City/#"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 47
    sget-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.weather.logic.db.WeatherProvider"

    const-string v2, "HotCity"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 48
    sget-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.weather.logic.db.WeatherProvider"

    const-string v2, "HotCity/#"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 50
    sget-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.weather.logic.db.WeatherProvider"

    const-string v2, "WeatherForecastv2"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 51
    sget-object v0, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "cn.nubia.weather.logic.db.WeatherProvider"

    const-string v2, "WeatherForecastv2/#"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static final copyBoolean(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 244
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 245
    .local v0, "b":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 246
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 248
    :cond_0
    return-void
.end method

.method private static final copyInteger(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 237
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    .line 238
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 241
    :cond_0
    return-void
.end method

.method private static final copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;

    .prologue
    .line 251
    invoke-virtual {p1, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {p2, p0, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    :cond_0
    return-void
.end method

.method private static final copyStringWithDefault(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "from"    # Landroid/content/ContentValues;
    .param p2, "to"    # Landroid/content/ContentValues;
    .param p3, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 259
    invoke-static {p0, p1, p2}, Lcn/nubia/weather/logic/db/WeatherProvider;->copyString(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)V

    .line 260
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 261
    invoke-virtual {p2, p0, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :cond_0
    return-void
.end method

.method private insertCity(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 8
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v6, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {v6}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 138
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 139
    .local v2, "filteredValues":Landroid/content/ContentValues;
    const-wide/16 v4, -0x1

    .line 141
    .local v4, "rowID":J
    :try_start_0
    const-string v6, "City"

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 146
    :goto_0
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_0

    .line 147
    const-string v6, "WeatherProvider"

    const-string v7, "couldn\'t insert into city table"

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :goto_1
    return-object v3

    .line 142
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 150
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->CITY_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1
.end method

.method private insertWeatherForecast(Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 6
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 119
    iget-object v4, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {v4}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 120
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-wide/16 v2, -0x1

    .line 122
    .local v2, "rowId":J
    :try_start_0
    const-string v4, "WeatherForecastv2"

    const-string v5, "weather_update_time"

    invoke-virtual {v0, v4, v5, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 129
    :goto_0
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 130
    const-string v4, "WeatherProvider"

    const-string v5, "couldn\'t insert into forecat table"

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const/4 v4, 0x0

    .line 133
    :goto_1
    return-object v4

    .line 124
    :catch_0
    move-exception v1

    .line 126
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 133
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    sget-object v4, Lcn/nubia/weather/logic/db/WeatherProvider;->CITY_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 4
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 267
    const-string v1, "getCurrentWeather"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 269
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/weather/logic/db/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 270
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 271
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "type"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v1, "city"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v1, "temp"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "WeatherProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Temp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v3

    iget-object v3, v3, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v1, "windForce"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindForce:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v1, "windDirection"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindDirectionType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v1, "highLowTemp"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHightLowTemp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    const-string v1, "alarmType"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "alarmLevel"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmLevel:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "alarmTime"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmTime:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "timezone"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    .end local v0    # "bundle":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 283
    :cond_0
    const-string v1, "getCurrentWeatherForCalendar"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 284
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/weather/logic/db/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z

    .line 285
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 286
    .restart local v0    # "bundle":Landroid/os/Bundle;
    const-string v1, "city"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v1, "dayType"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v1, "nightType"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    const-string v1, "dayTemp"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayTemp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    const-string v1, "nightTemp"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightTemp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v1, "timezone"

    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v2

    iget-object v2, v2, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "selection"    # Ljava/lang/String;
    .param p3, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 65
    iget-object v3, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {v3}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 66
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    sget-object v3, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 83
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot delete from URL: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 68
    :pswitch_0
    const-string v3, "WeatherForecastv2"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 85
    .local v0, "count":I
    :goto_0
    return v0

    .line 72
    .end local v0    # "count":I
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 74
    .local v2, "forecastSegment":Ljava/lang/String;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 79
    :goto_1
    const-string v3, "WeatherForecastv2"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 81
    .restart local v0    # "count":I
    goto :goto_0

    .line 77
    .end local v0    # "count":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 66
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 90
    sget-object v1, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 91
    .local v0, "match":I
    packed-switch v0, :pswitch_data_0

    .line 97
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unknown URL"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 93
    :pswitch_0
    const-string v1, "vnd.android.cursor.dir/city"

    .line 95
    :goto_0
    return-object v1

    :pswitch_1
    const-string v1, "vnd.android.cursor.item/city"

    goto :goto_0

    .line 91
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 3
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 104
    const/4 v1, 0x0

    .line 105
    .local v1, "resultUri":Landroid/net/Uri;
    sget-object v2, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    .line 106
    .local v0, "match":I
    sparse-switch v0, :sswitch_data_0

    .line 114
    :goto_0
    return-object v1

    .line 108
    :sswitch_0
    invoke-direct {p0, p2}, Lcn/nubia/weather/logic/db/WeatherProvider;->insertCity(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 109
    goto :goto_0

    .line 111
    :sswitch_1
    invoke-direct {p0, p2}, Lcn/nubia/weather/logic/db/WeatherProvider;->insertWeatherForecast(Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 106
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {p0}, Lcn/nubia/weather/logic/db/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    .line 57
    iget-object v0, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {v0}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    .line 58
    const-string v0, "WeatherProvider"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "projection"    # [Ljava/lang/String;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;
    .param p5, "sortOrder"    # Ljava/lang/String;

    .prologue
    .line 156
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 157
    .local v0, "qBuilder":Landroid/database/sqlite/SQLiteQueryBuilder;
    sget-object v1, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v8

    .line 158
    .local v8, "match":I
    packed-switch v8, :pswitch_data_0

    .line 184
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 160
    :pswitch_0
    const-string v1, "City"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 187
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->buildQuery([Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 191
    .local v10, "sql":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {v1}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 193
    .local v9, "ret":Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 194
    const-string v1, "WeatherProvider"

    const-string v2, "CityProvider.query: failed"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_1
    return-object v9

    .line 163
    .end local v9    # "ret":Landroid/database/Cursor;
    .end local v10    # "sql":Ljava/lang/String;
    :pswitch_1
    const-string v1, "City"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 164
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 165
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 168
    :pswitch_2
    const-string v1, "HotCity"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :pswitch_3
    const-string v1, "HotCity"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 172
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 173
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 176
    :pswitch_4
    const-string v1, "WeatherForecastv2"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    goto :goto_0

    .line 179
    :pswitch_5
    const-string v1, "WeatherForecastv2"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 180
    const-string v1, "_id="

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    .line 181
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 196
    .restart local v9    # "ret":Landroid/database/Cursor;
    .restart local v10    # "sql":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/logic/db/WeatherProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-interface {v9, v1, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    goto :goto_1

    .line 158
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "selection"    # Ljava/lang/String;
    .param p4, "selectionArgs"    # [Ljava/lang/String;

    .prologue
    .line 204
    const/4 v0, -0x1

    .line 205
    .local v0, "count":I
    const-wide/16 v6, 0x0

    .line 206
    .local v6, "rowId":J
    sget-object v5, Lcn/nubia/weather/logic/db/WeatherProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    .line 207
    .local v4, "match":I
    iget-object v5, p0, Lcn/nubia/weather/logic/db/WeatherProvider;->mOpenHelper:Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;

    invoke-virtual {v5}, Lcn/nubia/weather/logic/db/WeatherDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 208
    .local v1, "db":Landroid/database/sqlite/SQLiteDatabase;
    packed-switch v4, :pswitch_data_0

    .line 231
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot update URL: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 212
    :pswitch_0
    :try_start_0
    const-string v5, "WeatherForecastv2"

    invoke-virtual {v1, v5, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 233
    :goto_0
    return v0

    .line 214
    :catch_0
    move-exception v2

    .line 216
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 220
    .end local v2    # "e":Ljava/lang/Exception;
    :pswitch_1
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v5

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 221
    .local v3, "forecastSegment":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 223
    :try_start_1
    const-string v5, "WeatherForecastv2"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v5, p2, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    goto :goto_0

    .line 225
    :catch_1
    move-exception v2

    .line 227
    .restart local v2    # "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 208
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
