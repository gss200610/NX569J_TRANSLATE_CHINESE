.class public Lcn/nubia/weather/persistent/DBHelper;
.super Ljava/lang/Object;
.source "DBHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllCities(Landroid/database/Cursor;)Ljava/util/List;
    .locals 12
    .param p0, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/CityModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 30
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .local v10, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v11

    if-nez v11, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-object v10

    .line 35
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 36
    const-string v11, "province"

    .line 37
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "province":Ljava/lang/String;
    const-string v11, "city_cn"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "city_cn":Ljava/lang/String;
    const-string v11, "city_pinyin"

    .line 40
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 39
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    .local v3, "city_pinyin":Ljava/lang/String;
    const-string v11, "city_py"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "city_py":Ljava/lang/String;
    const-string v11, "name_cn"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 43
    .local v5, "name_cn":Ljava/lang/String;
    const-string v11, "name_pinyin"

    .line 44
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 43
    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 45
    .local v6, "name_pinyin":Ljava/lang/String;
    const-string v11, "name_py"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 46
    .local v7, "name_py":Ljava/lang/String;
    const-string v11, "areaId"

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {p0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 47
    .local v8, "areaId":Ljava/lang/String;
    new-instance v0, Lcn/nubia/weather/model/CityModel;

    invoke-direct/range {v0 .. v8}, Lcn/nubia/weather/model/CityModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .local v0, "cityItem":Lcn/nubia/weather/model/CityModel;
    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 51
    .end local v0    # "cityItem":Lcn/nubia/weather/model/CityModel;
    .end local v1    # "province":Ljava/lang/String;
    .end local v2    # "city_cn":Ljava/lang/String;
    .end local v3    # "city_pinyin":Ljava/lang/String;
    .end local v4    # "city_py":Ljava/lang/String;
    .end local v5    # "name_cn":Ljava/lang/String;
    .end local v6    # "name_pinyin":Ljava/lang/String;
    .end local v7    # "name_py":Ljava/lang/String;
    .end local v8    # "areaId":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 52
    .local v9, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    if-eqz p0, :cond_0

    .line 55
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 54
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz p0, :cond_0

    .line 55
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 54
    :catchall_0
    move-exception v11

    if-eqz p0, :cond_3

    .line 55
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v11
.end method

.method public static getAllWeatherSync(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 100
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    const-string v5, "is_location DESC "

    move-object v3, v2

    move-object v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 103
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {v6}, Lcn/nubia/weather/persistent/DBHelper;->getAllWeathers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v7

    .line 104
    .local v7, "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    :goto_0
    return-object v2

    :cond_0
    move-object v2, v7

    goto :goto_0
.end method

.method public static getAllWeathers(Landroid/database/Cursor;)Ljava/util/List;
    .locals 32
    .param p0, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 112
    const-string v30, "DB getAllWeathers"

    invoke-static/range {v30 .. v30}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 115
    :try_start_0
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v20, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->getCount()I

    move-result v30

    if-nez v30, :cond_1

    .line 117
    :cond_0
    const-string v30, "getAllWeathers"

    const-string v31, "getAllWeathers 0"

    invoke-static/range {v30 .. v31}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 234
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_0
    return-object v20

    .line 121
    :cond_1
    :goto_1
    :try_start_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v30

    if-eqz v30, :cond_7

    .line 122
    const-string v30, "area_id"

    .line 123
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 122
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 124
    .local v10, "areaID":Ljava/lang/String;
    const-string v30, "is_location"

    .line 125
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 124
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    .line 126
    .local v28, "type":I
    const-string v30, "city_name"

    .line 127
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 126
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 128
    .local v11, "cityNameJson":Ljava/lang/String;
    const-string v30, "alarm_json"

    .line 129
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 128
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 130
    .local v5, "alarmJson":Ljava/lang/String;
    const-string v30, "aqi_json"

    .line 131
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 130
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 132
    .local v9, "aqiJson":Ljava/lang/String;
    const-string v30, "forecast5d_json"

    .line 134
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 133
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 135
    .local v14, "forecast5dJson":Ljava/lang/String;
    const-string v30, "hourfc_json"

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 135
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 137
    .local v16, "hourfcJson":Ljava/lang/String;
    const-string v30, "index_json"

    .line 138
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 137
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v19

    .line 139
    .local v19, "indexJson":Ljava/lang/String;
    const-string v30, "pastday_json"

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 139
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v24

    .line 141
    .local v24, "pastdayJson":Ljava/lang/String;
    const-string v30, "observe_json"

    .line 142
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 141
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v22

    .line 143
    .local v22, "observeJson":Ljava/lang/String;
    const-string v30, "update_time"

    .line 144
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 143
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v26

    .line 145
    .local v26, "time":J
    const-string v30, "all_data"

    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v17

    .line 146
    .local v17, "i":I
    const-string v30, "all_data"

    .line 147
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 146
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 148
    .local v6, "allDataJson":Ljava/lang/String;
    const-string v30, "parent_city_id"

    .line 149
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 148
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 150
    .local v23, "parentID":Ljava/lang/String;
    const-string v30, "timezone_id"

    .line 151
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v30

    .line 150
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 152
    .local v25, "timezoneID":Ljava/lang/String;
    const-string v30, "DB WeatherModel"

    invoke-static/range {v30 .. v30}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 154
    :try_start_2
    new-instance v29, Lcn/nubia/weather/model/WeatherModel;

    invoke-direct/range {v29 .. v29}, Lcn/nubia/weather/model/WeatherModel;-><init>()V

    .line 155
    .local v29, "weather":Lcn/nubia/weather/model/WeatherModel;
    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, v29

    invoke-virtual {v0, v10}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 157
    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmParentCityID(Ljava/lang/String;)V

    .line 158
    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setGmtOffSet(Ljava/lang/String;)V

    .line 159
    move-object/from16 v0, v29

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 161
    :try_start_3
    const-string v30, "TYPE_NWS_SERVER"

    const-string v31, "TYPE_NWS_SERVER"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_5

    .line 162
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v30

    if-eqz v30, :cond_4

    .line 169
    invoke-static {v10, v5}, Lcn/nubia/weather/model/AlarmModel;->buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/AlarmModel;

    move-result-object v4

    .line 170
    .local v4, "alarm":Lcn/nubia/weather/model/AlarmModel;
    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Lcn/nubia/weather/model/WeatherModel;->setmAlarm(Lcn/nubia/weather/model/AlarmModel;)V

    .line 174
    invoke-static {v10, v9}, Lcn/nubia/weather/model/AQIModel;->buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/AQIModel;

    move-result-object v8

    .line 175
    .local v8, "aqi":Lcn/nubia/weather/model/AQIModel;
    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Lcn/nubia/weather/model/WeatherModel;->setmAQI(Lcn/nubia/weather/model/AQIModel;)V

    .line 180
    invoke-static {v10, v14}, Lcn/nubia/weather/model/Forecast5dModel;->buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v13

    .line 182
    .local v13, "forecast5d":Lcn/nubia/weather/model/Forecast5dModel;
    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Lcn/nubia/weather/model/WeatherModel;->setmForecast5d(Lcn/nubia/weather/model/Forecast5dModel;)V

    .line 186
    move-object/from16 v0, v16

    invoke-static {v10, v0}, Lcn/nubia/weather/model/HourfcModel;->buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/HourfcModel;

    move-result-object v15

    .line 188
    .local v15, "hourfc":Lcn/nubia/weather/model/HourfcModel;
    move-object/from16 v0, v29

    invoke-virtual {v0, v15}, Lcn/nubia/weather/model/WeatherModel;->setmHourfc(Lcn/nubia/weather/model/HourfcModel;)V

    .line 194
    move-object/from16 v0, v19

    invoke-static {v10, v0}, Lcn/nubia/weather/model/IndexModel;->buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/IndexModel;

    move-result-object v18

    .line 195
    .local v18, "index":Lcn/nubia/weather/model/IndexModel;
    move-object/from16 v0, v29

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmIndex(Lcn/nubia/weather/model/IndexModel;)V

    .line 199
    move-object/from16 v0, v22

    invoke-static {v10, v0}, Lcn/nubia/weather/model/ObserveModel;->buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/ObserveModel;

    move-result-object v21

    .line 201
    .local v21, "observe":Lcn/nubia/weather/model/ObserveModel;
    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcn/nubia/weather/model/WeatherModel;->setmObserve(Lcn/nubia/weather/model/ObserveModel;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 218
    .end local v4    # "alarm":Lcn/nubia/weather/model/AlarmModel;
    .end local v8    # "aqi":Lcn/nubia/weather/model/AQIModel;
    .end local v13    # "forecast5d":Lcn/nubia/weather/model/Forecast5dModel;
    .end local v15    # "hourfc":Lcn/nubia/weather/model/HourfcModel;
    .end local v18    # "index":Lcn/nubia/weather/model/IndexModel;
    .end local v21    # "observe":Lcn/nubia/weather/model/ObserveModel;
    :cond_2
    :goto_2
    :try_start_4
    move-object/from16 v0, v29

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/model/WeatherModel;->setmTime(J)V

    .line 219
    move-object/from16 v0, v29

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/model/WeatherModel;->setmRefreshTime(J)V

    .line 220
    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/16 :goto_1

    .line 225
    .end local v5    # "alarmJson":Ljava/lang/String;
    .end local v6    # "allDataJson":Ljava/lang/String;
    .end local v9    # "aqiJson":Ljava/lang/String;
    .end local v10    # "areaID":Ljava/lang/String;
    .end local v11    # "cityNameJson":Ljava/lang/String;
    .end local v14    # "forecast5dJson":Ljava/lang/String;
    .end local v16    # "hourfcJson":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v19    # "indexJson":Ljava/lang/String;
    .end local v22    # "observeJson":Ljava/lang/String;
    .end local v23    # "parentID":Ljava/lang/String;
    .end local v24    # "pastdayJson":Ljava/lang/String;
    .end local v25    # "timezoneID":Ljava/lang/String;
    .end local v26    # "time":J
    .end local v28    # "type":I
    .end local v29    # "weather":Lcn/nubia/weather/model/WeatherModel;
    :catch_0
    move-exception v12

    .line 226
    .local v12, "e":Ljava/lang/Exception;
    :try_start_6
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 228
    if-eqz p0, :cond_3

    .line 229
    :try_start_7
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 234
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_3
    :goto_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 206
    .restart local v5    # "alarmJson":Ljava/lang/String;
    .restart local v6    # "allDataJson":Ljava/lang/String;
    .restart local v9    # "aqiJson":Ljava/lang/String;
    .restart local v10    # "areaID":Ljava/lang/String;
    .restart local v11    # "cityNameJson":Ljava/lang/String;
    .restart local v14    # "forecast5dJson":Ljava/lang/String;
    .restart local v16    # "hourfcJson":Ljava/lang/String;
    .restart local v17    # "i":I
    .restart local v19    # "indexJson":Ljava/lang/String;
    .restart local v22    # "observeJson":Ljava/lang/String;
    .restart local v23    # "parentID":Ljava/lang/String;
    .restart local v24    # "pastdayJson":Ljava/lang/String;
    .restart local v25    # "timezoneID":Ljava/lang/String;
    .restart local v26    # "time":J
    .restart local v28    # "type":I
    .restart local v29    # "weather":Lcn/nubia/weather/model/WeatherModel;
    :cond_4
    :try_start_8
    invoke-static {v10, v6}, Lcn/nubia/weather/model/NubiaServerModel;->build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/NubiaServerModel;

    move-result-object v7

    .line 208
    .local v7, "allModel":Lcn/nubia/weather/model/NubiaServerModel;
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcn/nubia/weather/model/NubiaServerModel;->build(Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v29

    .line 209
    goto :goto_2

    .line 210
    .end local v7    # "allModel":Lcn/nubia/weather/model/NubiaServerModel;
    :cond_5
    const-string v30, "TYPE_NWS_SERVER"

    const-string v31, "TYPE_NUBIA_SERVER"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v30

    if-eqz v30, :cond_2

    .line 211
    invoke-static {v10, v6}, Lcn/nubia/weather/model/NubiaServerModel;->build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/NubiaServerModel;

    move-result-object v7

    .line 213
    .restart local v7    # "allModel":Lcn/nubia/weather/model/NubiaServerModel;
    move-object/from16 v0, v29

    invoke-virtual {v7, v0}, Lcn/nubia/weather/model/NubiaServerModel;->build(Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/model/WeatherModel;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    move-result-object v29

    goto :goto_2

    .line 215
    .end local v7    # "allModel":Lcn/nubia/weather/model/NubiaServerModel;
    :catch_1
    move-exception v12

    .line 216
    .restart local v12    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string v30, "DBHelper"

    const-string v31, " "

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-static {v0, v1, v12}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_2

    .line 222
    .end local v12    # "e":Ljava/lang/Exception;
    .end local v29    # "weather":Lcn/nubia/weather/model/WeatherModel;
    :catchall_0
    move-exception v30

    :try_start_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v30
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 228
    .end local v5    # "alarmJson":Ljava/lang/String;
    .end local v6    # "allDataJson":Ljava/lang/String;
    .end local v9    # "aqiJson":Ljava/lang/String;
    .end local v10    # "areaID":Ljava/lang/String;
    .end local v11    # "cityNameJson":Ljava/lang/String;
    .end local v14    # "forecast5dJson":Ljava/lang/String;
    .end local v16    # "hourfcJson":Ljava/lang/String;
    .end local v17    # "i":I
    .end local v19    # "indexJson":Ljava/lang/String;
    .end local v22    # "observeJson":Ljava/lang/String;
    .end local v23    # "parentID":Ljava/lang/String;
    .end local v24    # "pastdayJson":Ljava/lang/String;
    .end local v25    # "timezoneID":Ljava/lang/String;
    .end local v26    # "time":J
    .end local v28    # "type":I
    :catchall_1
    move-exception v30

    if-eqz p0, :cond_6

    .line 229
    :try_start_b
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v30
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 234
    .end local v20    # "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :catchall_2
    move-exception v30

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v30

    .line 228
    .restart local v20    # "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :cond_7
    if-eqz p0, :cond_3

    .line 229
    :try_start_c
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_3
.end method

.method public static getHotCities(Landroid/database/Cursor;)Ljava/util/List;
    .locals 6
    .param p0, "c"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/CityModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-nez v5, :cond_1

    .line 81
    :cond_0
    :goto_0
    return-object v3

    .line 67
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 68
    const-string v5, "name"

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 69
    .local v4, "name":Ljava/lang/String;
    const-string v5, "areaId"

    .line 70
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 71
    .local v0, "areaID":Ljava/lang/String;
    new-instance v1, Lcn/nubia/weather/model/CityModel;

    invoke-direct {v1, v4, v0}, Lcn/nubia/weather/model/CityModel;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .local v1, "cityItem":Lcn/nubia/weather/model/CityModel;
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 74
    .end local v0    # "areaID":Ljava/lang/String;
    .end local v1    # "cityItem":Lcn/nubia/weather/model/CityModel;
    .end local v4    # "name":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 75
    .local v2, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 77
    if-eqz p0, :cond_0

    .line 78
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 77
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_2
    if-eqz p0, :cond_0

    .line 78
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 77
    :catchall_0
    move-exception v5

    if-eqz p0, :cond_3

    .line 78
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v5
.end method

.method public static getWeatherModelByID(Ljava/lang/String;Landroid/content/Context;)Lcn/nubia/weather/model/WeatherModel;
    .locals 9
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 86
    .local v0, "cr":Landroid/content/ContentResolver;
    sget-object v1, Lcn/nubia/weather/logic/db/WeatherProvider;->WEATHER_FORECAST_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "area_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p0, v4, v8

    const-string v5, "is_location DESC "

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 90
    .local v6, "cursor":Landroid/database/Cursor;
    invoke-static {v6}, Lcn/nubia/weather/persistent/DBHelper;->getAllWeathers(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v7

    .line 91
    .local v7, "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    :goto_0
    return-object v2

    :cond_0
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/WeatherModel;

    move-object v2, v1

    goto :goto_0
.end method
