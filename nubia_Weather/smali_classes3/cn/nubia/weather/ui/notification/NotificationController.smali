.class public Lcn/nubia/weather/ui/notification/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "HandlerLeak"
    }
.end annotation


# static fields
.field public static final EARLY_WARNING:I = 0x0

.field public static final RAIN_REMIND:I = 0x1

.field private static final TAG:Ljava/lang/String; = "NotificationController"

.field public static final TEMPRATURE_DIFFERENCE:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mNotification:Landroid/app/Notification;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    .line 56
    const-string v0, "notification"

    .line 57
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 58
    return-void
.end method

.method private clearNotification()V
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotification:Landroid/app/Notification;

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotificationType:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 382
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotification:Landroid/app/Notification;

    .line 384
    :cond_0
    return-void
.end method

.method private determineTime(Lcn/nubia/weather/model/WeatherModel;)Z
    .locals 5
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 182
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 183
    .local v0, "c":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 184
    .local v1, "hour":I
    const/4 v2, 0x1

    .line 185
    .local v2, "isRealDay":Z
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 186
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/model/Forecast5dModel;->getmPublishTime()Ljava/util/Date;

    move-result-object v3

    .line 187
    .local v3, "time":Ljava/util/Date;
    if-eqz v3, :cond_0

    .line 188
    invoke-static {v3}, Lcn/nubia/weather/utils/CalendarUtil;->isRealDay(Ljava/util/Date;)Z

    move-result v2

    .line 191
    .end local v3    # "time":Ljava/util/Date;
    :cond_0
    if-eqz v2, :cond_1

    const/4 v4, 0x6

    if-lt v1, v4, :cond_1

    const/16 v4, 0x8

    if-ge v1, v4, :cond_1

    .line 192
    const/4 v4, 0x1

    .line 194
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private filterAlarmMsg(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 25
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v6, 0x0

    .line 116
    .local v6, "alarmTime":[Ljava/lang/String;
    const/16 v17, 0x0

    .line 117
    .local v17, "level":Ljava/lang/String;
    const/16 v20, 0x0

    .line 118
    .local v20, "type":Ljava/lang/String;
    const/4 v8, 0x0

    .line 119
    .local v8, "areaName":Ljava/lang/String;
    const/16 v19, 0x0

    .line 120
    .local v19, "time":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcn/nubia/weather/model/AlarmModel;->getmAlarms()Ljava/util/List;

    move-result-object v7

    .line 121
    .local v7, "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    if-eqz v21, :cond_5

    .line 122
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v16

    .line 123
    .local v16, "len":I
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    new-array v6, v0, [Ljava/lang/String;

    .line 125
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v14, v0, :cond_0

    .line 126
    invoke-interface {v7, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    .line 127
    .local v13, "f":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    invoke-virtual {v13}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmPublishTime()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v6, v14

    .line 125
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 130
    .end local v13    # "f":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    :cond_0
    invoke-static {v6}, Lcn/nubia/weather/model/ModelHelper;->findRecentlyAlarmIndex([Ljava/lang/String;)I

    move-result v18

    .line 131
    .local v18, "maxAlarmTimeIndex":I
    const-string v10, "ID"

    .line 132
    .local v10, "currentID":Ljava/lang/String;
    if-ltz v18, :cond_1

    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_1

    .line 133
    move/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    invoke-virtual/range {v21 .. v21}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmInfoID()Ljava/lang/String;

    move-result-object v10

    .line 134
    move/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    invoke-virtual/range {v21 .. v21}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmLevelName()Ljava/lang/String;

    move-result-object v17

    .line 135
    move/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    invoke-virtual/range {v21 .. v21}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmClassName()Ljava/lang/String;

    move-result-object v20

    .line 136
    move/from16 v0, v18

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    invoke-virtual/range {v21 .. v21}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmCity()Ljava/lang/String;

    move-result-object v8

    .line 137
    aget-object v19, v6, v18

    .line 139
    :cond_1
    invoke-static/range {v17 .. v17}, Lcn/nubia/weather/utils/LanguageUtil;->getAlarmLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 140
    invoke-static/range {v20 .. v20}, Lcn/nubia/weather/utils/LanguageUtil;->getAlarmType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 141
    invoke-static {v8}, Lcn/nubia/weather/utils/LanguageUtil;->getAlarmArea(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 142
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 143
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 144
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 145
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_3

    .line 179
    .end local v10    # "currentID":Ljava/lang/String;
    .end local v14    # "i":I
    .end local v16    # "len":I
    .end local v18    # "maxAlarmTimeIndex":I
    :cond_2
    :goto_1
    return-void

    .line 149
    .restart local v10    # "currentID":Ljava/lang/String;
    .restart local v14    # "i":I
    .restart local v16    # "len":I
    .restart local v18    # "maxAlarmTimeIndex":I
    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 150
    .local v9, "c":Ljava/util/Calendar;
    const/16 v21, 0x5

    move/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/util/Calendar;->get(I)I

    move-result v11

    .line 152
    .local v11, "day":I
    const/16 v21, 0x8

    const/16 v22, 0xa

    :try_start_0
    move-object/from16 v0, v19

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 153
    .local v4, "alarmDay":I
    if-ne v4, v11, :cond_2

    .line 159
    .end local v4    # "alarmDay":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "last_Alarm_ID"

    const-string v23, ""

    .line 160
    invoke-static/range {v21 .. v23}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 161
    .local v5, "alarmID":Ljava/lang/String;
    const-string v21, "NotificationController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Last alarm ID is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " CurrentID is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v15, 0x1

    .line 163
    .local v15, "isAlarm":Z
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v21

    if-eqz v21, :cond_4

    .line 165
    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcn/nubia/weather/ui/notification/NotificationController;->title(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/nubia/weather/ui/notification/NotificationController;->msg(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v15}, Lcn/nubia/weather/ui/notification/NotificationController;->setNotificationType(ILjava/lang/String;Ljava/lang/CharSequence;Z)V

    .line 167
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "last_Alarm_ID"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 156
    .end local v5    # "alarmID":Ljava/lang/String;
    .end local v15    # "isAlarm":Z
    :catch_0
    move-exception v12

    .line 157
    .local v12, "e":Ljava/lang/Exception;
    invoke-virtual {v12}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 169
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v5    # "alarmID":Ljava/lang/String;
    .restart local v15    # "isAlarm":Z
    :cond_4
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_2

    .line 170
    const/16 v21, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcn/nubia/weather/ui/notification/NotificationController;->title(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ","

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcn/nubia/weather/ui/notification/NotificationController;->msg(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v23

    move-object/from16 v0, p0

    move/from16 v1, v21

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-direct {v0, v1, v2, v3, v15}, Lcn/nubia/weather/ui/notification/NotificationController;->setNotificationType(ILjava/lang/String;Ljava/lang/CharSequence;Z)V

    .line 172
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    const-string v22, "last_Alarm_ID"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v1, v10}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 176
    .end local v5    # "alarmID":Ljava/lang/String;
    .end local v9    # "c":Ljava/util/Calendar;
    .end local v10    # "currentID":Ljava/lang/String;
    .end local v11    # "day":I
    .end local v14    # "i":I
    .end local v15    # "isAlarm":Z
    .end local v16    # "len":I
    .end local v18    # "maxAlarmTimeIndex":I
    :cond_5
    const-string v21, "NotificationController"

    const-string v22, "Alarm list is NULL "

    invoke-static/range {v21 .. v22}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private getLargerBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 403
    const/4 v2, 0x0

    .line 404
    .local v2, "mBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 406
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020083

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 407
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 412
    if-eqz v1, :cond_0

    .line 413
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 419
    :cond_0
    :goto_0
    return-object v2

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 408
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 409
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 412
    if-eqz v1, :cond_0

    .line 413
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 415
    :catch_2
    move-exception v0

    .line 416
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 411
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    .line 412
    if-eqz v1, :cond_1

    .line 413
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 417
    :cond_1
    :goto_1
    throw v3

    .line 415
    :catch_3
    move-exception v0

    .line 416
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method private hasNotified(I)Z
    .locals 7
    .param p1, "type"    # I

    .prologue
    const/4 v6, -0x1

    .line 243
    const/4 v3, 0x1

    .line 245
    .local v3, "ret":Z
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 246
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v4, 0x5

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 248
    .local v1, "day":I
    const/4 v2, -0x1

    .line 249
    .local v2, "lastRemind":I
    const/4 v4, 0x1

    if-ne v4, p1, :cond_2

    .line 250
    iget-object v4, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    const-string v5, "RAIN_REMIND_DAY"

    invoke-static {v4, v5, v6}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    .line 254
    :cond_0
    :goto_0
    const-string v4, "NotificationController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "lastRemind "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    if-eq v1, v2, :cond_1

    .line 256
    const-string v4, "NotificationController"

    const-string v5, "not notified today"

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const/4 v3, 0x0

    .line 259
    :cond_1
    return v3

    .line 251
    :cond_2
    const/4 v4, 0x2

    if-ne v4, p1, :cond_0

    .line 252
    iget-object v4, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    const-string v5, "TEMP_REMIND_DAY"

    invoke-static {v4, v5, v6}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v2

    goto :goto_0
.end method

.method private msg(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 14
    .param p1, "weather"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 69
    :try_start_0
    const-string v10, ","

    invoke-virtual {p1, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "alarmType":[Ljava/lang/String;
    const/4 v10, 0x2

    aget-object v10, v1, v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 71
    .local v6, "time":[Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v6, v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 72
    .local v7, "time1":[Ljava/lang/String;
    const/4 v10, 0x1

    aget-object v10, v6, v10

    const-string v11, ":"

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 73
    .local v8, "time2":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 74
    .local v0, "alarm":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v5

    .line 75
    .local v5, "isChinese":Z
    if-eqz v1, :cond_2

    const/4 v10, 0x0

    aget-object v10, v1, v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    .line 76
    if-nez v5, :cond_1

    .line 77
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 81
    :goto_0
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090068

    .line 82
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 83
    .local v3, "data":Ljava/lang/String;
    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    const/4 v12, 0x2

    aget-object v12, v7, v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aget-object v12, v8, v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    aput-object v0, v10, v11

    invoke-static {v3, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 84
    new-instance v2, Landroid/text/SpannableStringBuilder;

    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 85
    .local v2, "builder":Landroid/text/SpannableStringBuilder;
    if-eqz v5, :cond_0

    .line 86
    new-instance v10, Landroid/text/style/ForegroundColorSpan;

    const/4 v11, 0x1

    aget-object v11, v1, v11

    .line 87
    invoke-static {v11}, Lcn/nubia/weather/utils/WeatherStateUtils;->getAlarmColor(Ljava/lang/String;)I

    move-result v11

    invoke-direct {v10, v11}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 88
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    aget-object v12, v7, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    const/4 v12, 0x0

    aget-object v12, v8, v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    .line 89
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x2

    aget-object v13, v7, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v12, v13

    const/4 v13, 0x1

    aget-object v13, v1, v13

    .line 90
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v12, v13

    const/16 v13, 0x22

    .line 86
    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 98
    .end local v0    # "alarm":Ljava/lang/String;
    .end local v1    # "alarmType":[Ljava/lang/String;
    .end local v2    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v3    # "data":Ljava/lang/String;
    .end local v5    # "isChinese":Z
    .end local v6    # "time":[Ljava/lang/String;
    .end local v7    # "time1":[Ljava/lang/String;
    .end local v8    # "time2":[Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v2

    .line 79
    .restart local v0    # "alarm":Ljava/lang/String;
    .restart local v1    # "alarmType":[Ljava/lang/String;
    .restart local v5    # "isChinese":Z
    .restart local v6    # "time":[Ljava/lang/String;
    .restart local v7    # "time1":[Ljava/lang/String;
    .restart local v8    # "time2":[Ljava/lang/String;
    :cond_1
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x1

    aget-object v11, v1, v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    move-object v2, v9

    .line 95
    goto :goto_1

    .line 96
    .end local v0    # "alarm":Ljava/lang/String;
    .end local v1    # "alarmType":[Ljava/lang/String;
    .end local v5    # "isChinese":Z
    .end local v6    # "time":[Ljava/lang/String;
    .end local v7    # "time1":[Ljava/lang/String;
    .end local v8    # "time2":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e":Ljava/lang/Exception;
    const-string v10, "NotificationController"

    const-string v11, "error in msg format"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, v9

    .line 98
    goto :goto_1
.end method

.method private setNotificationType(ILjava/lang/String;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/CharSequence;

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/weather/ui/notification/NotificationController;->setNotificationType(ILjava/lang/String;Ljava/lang/CharSequence;Z)V

    .line 348
    return-void
.end method

.method private setNotificationType(ILjava/lang/String;Ljava/lang/CharSequence;Z)V
    .locals 7
    .param p1, "count"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/CharSequence;
    .param p4, "isAlarm"    # Z

    .prologue
    .line 350
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v4, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    .local v1, "builder":Landroid/support/v4/app/NotificationCompat$Builder;
    invoke-virtual {v1, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 352
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 354
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 355
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 356
    const v4, 0x7f020083

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 357
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_2

    .line 358
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 359
    .local v0, "b1":Landroid/os/Bundle;
    const-string v4, "nubiaSort"

    const-string v5, "Notify"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setExtras(Landroid/os/Bundle;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 361
    const-string v4, "z0"

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setSortKey(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 365
    .end local v0    # "b1":Landroid/os/Bundle;
    :goto_0
    new-instance v2, Landroid/content/Intent;

    iget-object v4, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    const-class v5, Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 366
    .local v2, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    .line 367
    const-string v4, "ALARM_ACTION"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 369
    :cond_0
    iget-object v4, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/high16 v6, 0x8000000

    invoke-static {v4, v5, v2, v6}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 371
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 373
    iget-object v4, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotification:Landroid/app/Notification;

    if-nez v4, :cond_1

    .line 374
    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotification:Landroid/app/Notification;

    .line 375
    iget-object v4, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotification:Landroid/app/Notification;

    const/16 v5, 0x10

    iput v5, v4, Landroid/app/Notification;->flags:I

    .line 377
    :cond_1
    iget-object v4, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v4, p1, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 378
    return-void

    .line 363
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :cond_2
    iget-object v4, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v4}, Lcn/nubia/weather/ui/notification/NotificationController;->getLargerBitmap(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method

.method private showAlarmWarning(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 1
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 103
    iget v0, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotificationType:I

    if-eqz v0, :cond_0

    .line 104
    invoke-direct {p0}, Lcn/nubia/weather/ui/notification/NotificationController;->clearNotification()V

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotificationType:I

    .line 107
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 108
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/model/AlarmModel;->getmAlarms()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 109
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/notification/NotificationController;->filterAlarmMsg(Lcn/nubia/weather/model/WeatherModel;)V

    .line 111
    :cond_1
    return-void
.end method

.method private showRainRemind(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 14
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 199
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 200
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v5

    .line 201
    .local v5, "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_0

    .line 202
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    .line 203
    .local v4, "f1":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    if-nez v4, :cond_1

    .line 240
    .end local v4    # "f1":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .end local v5    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    :cond_0
    :goto_0
    return-void

    .line 206
    .restart local v4    # "f1":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .restart local v5    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    :cond_1
    invoke-virtual {v4}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeWeather()Ljava/lang/String;

    move-result-object v7

    .line 207
    .local v7, "todayWeatherType":Ljava/lang/String;
    invoke-virtual {v4}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightWeather()Ljava/lang/String;

    move-result-object v8

    .line 208
    .local v8, "tonightWeatherType":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v6, v8

    .line 210
    .local v6, "todayType":Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 212
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    .line 217
    .local v9, "weatherType":I
    const/4 v10, 0x3

    if-lt v9, v10, :cond_0

    const/16 v10, 0xc

    if-gt v9, v10, :cond_0

    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/notification/NotificationController;->determineTime(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 218
    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 219
    invoke-direct {p0, v12}, Lcn/nubia/weather/ui/notification/NotificationController;->hasNotified(I)Z

    move-result v10

    if-nez v10, :cond_0

    .line 221
    iget v10, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotificationType:I

    if-eq v10, v12, :cond_2

    .line 222
    invoke-direct {p0}, Lcn/nubia/weather/ui/notification/NotificationController;->clearNotification()V

    .line 223
    iput v12, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotificationType:I

    .line 226
    :cond_2
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090093

    .line 227
    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 228
    .local v1, "data":Ljava/lang/String;
    new-array v10, v12, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v13

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x7f090094

    .line 230
    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 229
    invoke-direct {p0, v13, v10, v1}, Lcn/nubia/weather/ui/notification/NotificationController;->setNotificationType(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 231
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 232
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v10, 0x5

    invoke-virtual {v0, v10}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 234
    .local v2, "day":I
    iget-object v10, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    const-string v11, "RAIN_REMIND_DAY"

    invoke-static {v10, v11, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 235
    const-string v10, "NotificationController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "showRainRemind day:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "day":I
    .end local v6    # "todayType":Ljava/lang/String;
    .end local v9    # "weatherType":I
    :cond_3
    move-object v6, v7

    .line 208
    goto/16 :goto_1

    .line 213
    .restart local v6    # "todayType":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 214
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "NotificationController"

    const-string v11, "Wrong format for weatherType"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private showTemprature(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 18
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 263
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmPastDay()Lcn/nubia/weather/model/PastDayModel;

    move-result-object v15

    if-nez v15, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    const/4 v12, 0x0

    .line 267
    .local v12, "pastNum":I
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmPastDay()Lcn/nubia/weather/model/PastDayModel;

    move-result-object v15

    invoke-virtual {v15}, Lcn/nubia/weather/model/PastDayModel;->getmPasts()Ljava/util/List;

    move-result-object v13

    .line 268
    .local v13, "pasts":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/PastDayModel$PastInfoModel;>;"
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 270
    const/4 v6, 0x0

    .line 271
    .local v6, "dayTemp":Ljava/lang/Float;
    const/4 v8, 0x0

    .line 272
    .local v8, "nightTemp":Ljava/lang/Float;
    const/4 v9, 0x0

    .line 273
    .local v9, "pastDayTemp":Ljava/lang/Float;
    const/4 v11, 0x0

    .line 274
    .local v11, "pastNightTemp":Ljava/lang/Float;
    const/4 v10, 0x0

    .line 276
    .local v10, "pastInfoModel":Lcn/nubia/weather/model/PastDayModel$PastInfoModel;
    if-eqz v13, :cond_2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-eqz v15, :cond_2

    .line 277
    new-instance v3, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 278
    .local v3, "d":Ljava/util/Date;
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-interface {v13, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .end local v10    # "pastInfoModel":Lcn/nubia/weather/model/PastDayModel$PastInfoModel;
    check-cast v10, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;

    .line 282
    .end local v3    # "d":Ljava/util/Date;
    .restart local v10    # "pastInfoModel":Lcn/nubia/weather/model/PastDayModel$PastInfoModel;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v15

    invoke-virtual {v15}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v15

    if-eqz v15, :cond_3

    .line 283
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v15

    invoke-virtual {v15}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    if-eqz v15, :cond_3

    if-eqz v10, :cond_3

    .line 285
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v15

    invoke-virtual {v15}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v7

    .line 286
    .local v7, "forecasts":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    const/4 v15, 0x0

    invoke-interface {v7, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    .line 288
    .local v14, "todayModel":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    invoke-virtual {v14}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v6

    .line 289
    invoke-virtual {v14}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v8

    .line 291
    invoke-virtual {v10}, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->getMdayTemperature()Ljava/lang/Float;

    move-result-object v9

    .line 292
    invoke-virtual {v10}, Lcn/nubia/weather/model/PastDayModel$PastInfoModel;->getMnightTemperature()Ljava/lang/Float;

    move-result-object v11

    .line 295
    .end local v7    # "forecasts":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v14    # "todayModel":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :cond_3
    if-eqz v8, :cond_0

    if-eqz v11, :cond_0

    if-eqz v9, :cond_0

    .line 296
    if-nez v6, :cond_5

    .line 297
    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v16

    sub-float v15, v15, v16

    float-to-int v12, v15

    .line 309
    :goto_1
    invoke-direct/range {p0 .. p1}, Lcn/nubia/weather/ui/notification/NotificationController;->determineTime(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    const/4 v15, 0x2

    .line 310
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcn/nubia/weather/ui/notification/NotificationController;->hasNotified(I)Z

    move-result v15

    if-nez v15, :cond_0

    .line 312
    const/4 v15, 0x5

    if-le v12, v15, :cond_6

    .line 313
    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotificationType:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_4

    .line 314
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/notification/NotificationController;->clearNotification()V

    .line 315
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotificationType:I

    .line 317
    :cond_4
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090128

    .line 318
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 319
    .local v4, "data":Ljava/lang/String;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 320
    const/4 v15, 0x0

    .line 322
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f090129

    .line 323
    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 320
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v4}, Lcn/nubia/weather/ui/notification/NotificationController;->setNotificationType(ILjava/lang/String;Ljava/lang/CharSequence;)V

    .line 339
    :goto_2
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 340
    .local v2, "cal":Ljava/util/Calendar;
    const/4 v15, 0x5

    invoke-virtual {v2, v15}, Ljava/util/Calendar;->get(I)I

    move-result v5

    .line 341
    .local v5, "day":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    const-string v16, "TEMP_REMIND_DAY"

    move-object/from16 v0, v16

    invoke-static {v15, v0, v5}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 342
    const-string v15, "NotificationController"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "setTempRemind day:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 299
    .end local v2    # "cal":Ljava/util/Calendar;
    .end local v4    # "data":Ljava/lang/String;
    .end local v5    # "day":I
    :cond_5
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v15

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v16

    add-float v15, v15, v16

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v16

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v17

    add-float v16, v16, v17

    sub-float v15, v15, v16

    const/high16 v16, 0x40000000    # 2.0f

    div-float v15, v15, v16

    float-to-int v12, v15

    goto/16 :goto_1

    .line 324
    :cond_6
    const/4 v15, -0x5

    if-ge v12, v15, :cond_0

    .line 325
    move-object/from16 v0, p0

    iget v15, v0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotificationType:I

    const/16 v16, 0x2

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    .line 326
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/notification/NotificationController;->clearNotification()V

    .line 327
    const/4 v15, 0x2

    move-object/from16 v0, p0

    iput v15, v0, Lcn/nubia/weather/ui/notification/NotificationController;->mNotificationType:I

    .line 329
    :cond_7
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v15

    invoke-virtual {v15}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f09012a

    .line 330
    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 331
    .restart local v4    # "data":Ljava/lang/String;
    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v4, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 332
    const/4 v15, 0x0

    .line 334
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v16

    const v17, 0x7f09012b

    .line 335
    invoke-virtual/range {v16 .. v17}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 332
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v15, v1, v4}, Lcn/nubia/weather/ui/notification/NotificationController;->setNotificationType(ILjava/lang/String;Ljava/lang/CharSequence;)V

    goto/16 :goto_2
.end method

.method private title(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    const v2, 0x7f090069

    .line 62
    iget-object v1, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "data":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/weather/ui/notification/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public updateNotification(Lcn/nubia/weather/model/WeatherModel;I)V
    .locals 0
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;
    .param p2, "status"    # I

    .prologue
    .line 387
    packed-switch p2, :pswitch_data_0

    .line 400
    :goto_0
    return-void

    .line 389
    :pswitch_0
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/notification/NotificationController;->showAlarmWarning(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0

    .line 392
    :pswitch_1
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/notification/NotificationController;->showRainRemind(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0

    .line 395
    :pswitch_2
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/notification/NotificationController;->showTemprature(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0

    .line 387
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
