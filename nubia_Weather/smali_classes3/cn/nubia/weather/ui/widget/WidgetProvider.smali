.class public abstract Lcn/nubia/weather/ui/widget/WidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "WidgetProvider.java"


# static fields
.field protected static final ALARM_CLOCK_TAB:I = 0x1

.field protected static final DESKCLOCK:Ljava/lang/String; = "android.intent.action.NUBIA.TIMEMANAGER"

.field protected static final MESSAGE_UPDATE_WEATHER:I = 0x14000001

.field private static final TAG:Ljava/lang/String; = "WidgetProvider"

.field protected static final WEATHER_UPDATE:Ljava/lang/String; = "android.intent.action.NUBIA.WEATHER.UPDATE"


# instance fields
.field protected mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/widget/WidgetProvider;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected abstract getWeatherDate(Landroid/content/Context;)V
.end method

.method protected isFontClassExisted(Ljava/lang/String;)Z
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 243
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 251
    :goto_0
    return v2

    .line 247
    :cond_0
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 248
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v2, 0x1

    goto :goto_0

    .line 249
    .end local v0    # "clazz":Ljava/lang/Class;
    :catch_0
    move-exception v1

    .line 250
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v1}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetId"    # I
    .param p4, "newOptions"    # Landroid/os/Bundle;

    .prologue
    .line 107
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetProvider;->onAppWidgetOptionsChanged(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;ILandroid/os/Bundle;)V

    .line 108
    new-instance v0, Lcn/nubia/weather/ui/widget/WidgetProvider$3;

    invoke-direct {v0, p0, p4, p1, p3}, Lcn/nubia/weather/ui/widget/WidgetProvider$3;-><init>(Lcn/nubia/weather/ui/widget/WidgetProvider;Landroid/os/Bundle;Landroid/content/Context;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 135
    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WidgetProvider$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 136
    return-void
.end method

.method public onDeleted(Landroid/content/Context;[I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 96
    const-string v1, "WidgetProvider"

    const-string v2, "onDeleted"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    array-length v2, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p2, v1

    .line 98
    .local v0, "appWidgetId":I
    const-string v3, "WidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DELETE WID"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->removePrefString(Landroid/content/Context;Ljava/lang/String;)V

    .line 97
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 101
    .end local v0    # "appWidgetId":I
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onDeleted(Landroid/content/Context;[I)V

    .line 102
    return-void
.end method

.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const-string v0, "WidgetProvider"

    const-string v1, "onDisabled"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onDisabled(Landroid/content/Context;)V

    .line 93
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    const-string v0, "WidgetProvider"

    const-string v1, "onEnabled"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Lcn/nubia/weather/ui/widget/WidgetProvider$2;

    invoke-direct {v0, p0, p1}, Lcn/nubia/weather/ui/widget/WidgetProvider$2;-><init>(Lcn/nubia/weather/ui/widget/WidgetProvider;Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 85
    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WidgetProvider$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 86
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProvider;->onEnabled(Landroid/content/Context;)V

    .line 87
    return-void
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetManager"    # Landroid/appwidget/AppWidgetManager;
    .param p3, "appWidgetIds"    # [I

    .prologue
    .line 35
    const-string v0, "WidgetProvider"

    const-string v1, "onUpdate"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v0, Lcn/nubia/weather/ui/widget/WidgetProvider$1;

    invoke-direct {v0, p0, p1, p3}, Lcn/nubia/weather/ui/widget/WidgetProvider$1;-><init>(Lcn/nubia/weather/ui/widget/WidgetProvider;Landroid/content/Context;[I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 57
    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/widget/WidgetProvider$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/appwidget/AppWidgetProvider;->onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V

    .line 59
    return-void
.end method

.method protected reverseWithRecordedLocs(Landroid/content/Context;[I)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "appWidgetIds"    # [I

    .prologue
    .line 139
    array-length v9, p2

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v9, :cond_2

    aget v0, p2, v8

    .line 140
    .local v0, "appWidgetId":I
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WID"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, ""

    invoke-static {p1, v10, v11}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 141
    .local v7, "tempLoc":Ljava/lang/String;
    if-eqz v7, :cond_1

    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 142
    const-string v10, " "

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 143
    .local v6, "locStrs":[Ljava/lang/String;
    const/4 v2, 0x0

    .line 144
    .local v2, "loc1":[I
    const/4 v4, 0x0

    .line 146
    .local v4, "loc2":[I
    const/4 v10, 0x2

    :try_start_0
    new-array v3, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x0

    aget-object v11, v6, v11

    .line 147
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v3, v10

    const/4 v10, 0x1

    const/4 v11, 0x1

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v3, v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    .end local v2    # "loc1":[I
    .local v3, "loc1":[I
    const/4 v10, 0x2

    :try_start_1
    new-array v5, v10, [I

    const/4 v10, 0x0

    const/4 v11, 0x2

    aget-object v11, v6, v11

    .line 150
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v10

    const/4 v10, 0x1

    const/4 v11, 0x3

    aget-object v11, v6, v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    aput v11, v5, v10
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v4    # "loc2":[I
    .local v5, "loc2":[I
    move-object v4, v5

    .end local v5    # "loc2":[I
    .restart local v4    # "loc2":[I
    move-object v2, v3

    .line 155
    .end local v3    # "loc1":[I
    .restart local v2    # "loc1":[I
    :goto_1
    const/4 v10, 0x0

    aget v10, v4, v10

    const/4 v11, 0x0

    aget v11, v2, v11

    sub-int/2addr v10, v11

    if-lez v10, :cond_0

    const/4 v10, 0x1

    aget v10, v4, v10

    const/4 v11, 0x1

    aget v11, v2, v11

    sub-int/2addr v10, v11

    if-lez v10, :cond_0

    .line 156
    invoke-virtual {p0, p1, v2, v4, v0}, Lcn/nubia/weather/ui/widget/WidgetProvider;->setWidgetColor(Landroid/content/Context;[I[II)V

    .line 139
    .end local v2    # "loc1":[I
    .end local v4    # "loc2":[I
    .end local v6    # "locStrs":[Ljava/lang/String;
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 152
    .restart local v2    # "loc1":[I
    .restart local v4    # "loc2":[I
    .restart local v6    # "locStrs":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    :goto_3
    const-string v10, "WidgetProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parse widget locs failed : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 158
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    const-string v10, "WidgetProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid locs stored in tempLoc for WID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 161
    .end local v2    # "loc1":[I
    .end local v4    # "loc2":[I
    .end local v6    # "locStrs":[Ljava/lang/String;
    :cond_1
    const-string v10, "WidgetProvider"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setWidgetColor with empty locs for WID"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x2

    new-array v11, v11, [I

    invoke-virtual {p0, p1, v10, v11, v0}, Lcn/nubia/weather/ui/widget/WidgetProvider;->setWidgetColor(Landroid/content/Context;[I[II)V

    goto :goto_2

    .line 165
    .end local v0    # "appWidgetId":I
    .end local v7    # "tempLoc":Ljava/lang/String;
    :cond_2
    return-void

    .line 152
    .restart local v0    # "appWidgetId":I
    .restart local v3    # "loc1":[I
    .restart local v4    # "loc2":[I
    .restart local v6    # "locStrs":[Ljava/lang/String;
    .restart local v7    # "tempLoc":Ljava/lang/String;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3    # "loc1":[I
    .restart local v2    # "loc1":[I
    goto :goto_3
.end method

.method protected abstract setWidgetColor(Landroid/content/Context;[I[II)V
.end method

.method protected updateWeather(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 175
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v0

    .line 176
    .local v0, "WeatherCache":Lcn/nubia/weather/ui/widget/WidgetDataCache;
    iget-object v2, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    .line 177
    .local v2, "cityName":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090148

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 178
    .local v4, "ellipsis":Ljava/lang/String;
    iget-object v7, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 179
    .local v7, "weatherType":Ljava/lang/String;
    const-string v5, "--"

    .line 180
    .local v5, "noDataSign":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_0

    const v10, 0x7f090166

    .line 181
    invoke-virtual {p1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 182
    :cond_0
    const v10, 0x7f0f0142

    const v11, 0x7f0900eb

    invoke-virtual {p1, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 183
    const v10, 0x7f0f0144

    const/16 v11, 0x8

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 184
    const v10, 0x7f0f0140

    const/4 v11, -0x1

    iget-object v12, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 186
    invoke-static {v12}, Lcn/nubia/weather/utils/CalendarUtil;->isTimeNightByTimezone(Ljava/lang/String;)Z

    move-result v12

    .line 185
    invoke-static {v11, v12}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherIcon(IZ)I

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 187
    const v10, 0x7f0f0143

    const/16 v11, 0x8

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 240
    :cond_1
    :goto_0
    return-void

    .line 189
    :cond_2
    if-eqz v7, :cond_1

    .line 190
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_1

    .line 192
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090167

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 191
    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 195
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 196
    const v10, 0x7f0f0144

    const/16 v11, 0x8

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 199
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    .line 200
    .local v3, "cityNameLen":I
    iget-object v10, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 201
    invoke-static {v10}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 200
    invoke-static {v10}, Lcn/nubia/weather/utils/WeatherStateUtils;->getWeatherState(I)Ljava/lang/String;

    move-result-object v9

    .line 202
    .local v9, "weatherTypeStr":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v8

    .line 203
    .local v8, "weatherTypeLen":I
    const/4 v10, 0x7

    if-ne v3, v10, :cond_4

    .line 204
    const v10, 0x7f0f0144

    const/16 v11, 0x8

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 217
    :goto_1
    const v10, 0x7f0f0142

    invoke-virtual {p2, v10, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 218
    iget-object v10, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v6, ""

    .line 220
    .local v6, "tempStr":Ljava/lang/String;
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09004a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 221
    .local v1, "centigade":Ljava/lang/String;
    const v10, 0x7f0f0143

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 224
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 225
    const v10, 0x7f0f0143

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 230
    :goto_3
    iget-object v10, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 231
    const v10, 0x7f0f0140

    const/4 v11, -0x1

    iget-object v12, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 232
    invoke-static {v12}, Lcn/nubia/weather/utils/CalendarUtil;->isTimeNightByTimezone(Ljava/lang/String;)Z

    move-result v12

    .line 231
    invoke-static {v11, v12}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherIcon(IZ)I

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0

    .line 205
    .end local v1    # "centigade":Ljava/lang/String;
    .end local v6    # "tempStr":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x7

    if-le v3, v10, :cond_5

    .line 206
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    const/4 v12, 0x7

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 207
    const v10, 0x7f0f0144

    const/16 v11, 0x8

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_1

    .line 209
    :cond_5
    add-int v10, v3, v8

    const/4 v11, 0x7

    if-le v10, v11, :cond_6

    .line 210
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    rsub-int/lit8 v12, v3, 0x7

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 214
    :cond_6
    const v10, 0x7f0f0144

    const/4 v11, 0x0

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 215
    const v10, 0x7f0f0144

    invoke-virtual {p2, v10, v9}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 218
    :cond_7
    iget-object v6, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    goto/16 :goto_2

    .line 227
    .restart local v1    # "centigade":Ljava/lang/String;
    .restart local v6    # "tempStr":Ljava/lang/String;
    :cond_8
    const v10, 0x7f0f0144

    const/16 v11, 0x8

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 228
    const v10, 0x7f0f0143

    const/16 v11, 0x8

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    goto :goto_3

    .line 235
    :cond_9
    const v10, 0x7f0f0140

    .line 236
    invoke-static {}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;

    move-result-object v11

    iget-object v11, v11, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    invoke-static {v11}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v11

    iget-object v12, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 237
    invoke-static {v12}, Lcn/nubia/weather/utils/CalendarUtil;->isTimeNightByTimezone(Ljava/lang/String;)Z

    move-result v12

    .line 235
    invoke-static {v11, v12}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherIcon(IZ)I

    move-result v11

    invoke-virtual {p2, v10, v11}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_0
.end method
