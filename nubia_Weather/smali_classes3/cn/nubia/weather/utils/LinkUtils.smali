.class public Lcn/nubia/weather/utils/LinkUtils;
.super Ljava/lang/Object;
.source "LinkUtils.java"


# static fields
.field public static final TYPE_HUMIDITY:Ljava/lang/String; = "humidity"

.field public static final TYPE_INDEX:Ljava/lang/String; = "Indices"

.field public static final TYPE_REALFEEL:Ljava/lang/String; = "RealFeel"

.field public static final TYPE_UV:Ljava/lang/String; = "uv"

.field public static final TYPE_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final TYPE_WIND:Ljava/lang/String; = "wind"


# instance fields
.field private final AIR_QUALITY_DEATILS_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final ALARM_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final CURRENT_WEATHER_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final DAILY_FORECAST_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final HOURLY_FORECAST_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final INDICES_DEATILS_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final LANGUAGE_CN:Ljava/lang/String;

.field private final LANGUAGE_EN:Ljava/lang/String;

.field private final MAIN_PAGE_BASE_MOBILE_LINK:Ljava/lang/String;

.field private final PARTNER_CODE:Ljava/lang/String;

.field private mAreaId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "areaId"    # Ljava/lang/String;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "http://m.weathercn.com/air-quality.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->AIR_QUALITY_DEATILS_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 24
    const-string v0, "http://m.weathercn.com/weather-warning.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->ALARM_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 25
    const-string v0, "http://m.weathercn.com/livingindex.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->INDICES_DEATILS_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 26
    const-string v0, "http://m.weathercn.com/current-weather.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->CURRENT_WEATHER_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 27
    const-string v0, "http://m.weathercn.com/index.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->MAIN_PAGE_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 28
    const-string v0, "http://m.weathercn.com/daily-weather-forecast.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->DAILY_FORECAST_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 29
    const-string v0, "http://m.weathercn.com/hourly-weather-forecast.do?"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->HOURLY_FORECAST_BASE_MOBILE_LINK:Ljava/lang/String;

    .line 30
    const-string v0, "zh-cn"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->LANGUAGE_CN:Ljava/lang/String;

    .line 31
    const-string v0, "en"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->LANGUAGE_EN:Ljava/lang/String;

    .line 32
    const-string v0, "1000001030"

    iput-object v0, p0, Lcn/nubia/weather/utils/LinkUtils;->PARTNER_CODE:Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    const-string v0, "zh-cn"

    .line 219
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "en"

    goto :goto_0
.end method

.method public startAirLink()V
    .locals 2

    .prologue
    .line 175
    iget-object v1, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 187
    :goto_0
    return-void

    .line 178
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .local v0, "linkBuilder":Ljava/lang/StringBuilder;
    const-string v1, "http://m.weathercn.com/air-quality.do?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "&language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v1, "&id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    iget-object v1, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v1, "&partner="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v1, "1000001030"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startAlarmLink()V
    .locals 3

    .prologue
    .line 159
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    :goto_0
    return-void

    .line 162
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v1, "linkBuilder":Ljava/lang/StringBuilder;
    const-string v2, "http://m.weathercn.com/weather-warning.do?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v2, "&smartid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v2, "&partner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v2, "1000001030"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startCurrentWeatherLink()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startCurrentWeatherLink(Ljava/lang/String;)V

    .line 107
    return-void
.end method

.method public startCurrentWeatherLink(Ljava/lang/String;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 124
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 140
    :goto_0
    return-void

    .line 127
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .local v1, "linkBuilder":Ljava/lang/StringBuilder;
    const-string v2, "http://m.weathercn.com/current-weather.do?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    const-string v2, "&smartid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const-string v2, "&partner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 135
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDailyForecastLink(I)V
    .locals 3
    .param p1, "day"    # I

    .prologue
    .line 88
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 103
    :goto_0
    return-void

    .line 91
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 92
    .local v1, "linkBuilder":Ljava/lang/StringBuilder;
    const-string v2, "http://m.weathercn.com/daily-weather-forecast.do?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const-string v2, "&smartid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    const-string v2, "&day="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v2, "&partner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    const-string v2, "1000001030"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startHourlyForecastLink(I)V
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 40
    iget-object v5, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 68
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v4, "linkBuilder":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .line 46
    .local v0, "dayStr":Ljava/lang/String;
    const/4 v2, 0x0

    .line 47
    .local v2, "hourStr":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/weather/utils/TimeUtils;->getCurrentHour()I

    move-result v5

    add-int v1, v5, p1

    .line 48
    .local v1, "hour":I
    div-int/lit8 v5, v1, 0x18

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 49
    rem-int/lit8 v5, v1, 0x18

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    .line 51
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 53
    :cond_1
    const-string v5, "http://m.weathercn.com/hourly-weather-forecast.do?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    const-string v5, "&language="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v5, "&id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    iget-object v5, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    if-eqz p1, :cond_2

    .line 59
    const-string v5, "&day="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v5, "&hbhhour="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    :cond_2
    const-string v5, "&partner="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    const-string v5, "1000001030"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 67
    .local v3, "link":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startIndicesLink()V
    .locals 3

    .prologue
    .line 71
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 85
    :goto_0
    return-void

    .line 74
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .local v1, "linkBuilder":Ljava/lang/StringBuilder;
    const-string v2, "http://m.weathercn.com/livingindex.do?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    const-string v2, "&smartid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    const-string v2, "&partner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    const-string v2, "1000001030"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string v2, "#Indices"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 122
    :goto_0
    return-void

    .line 112
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .local v1, "linkBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    const-string v2, "&partner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    const-string v2, "1000001030"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startMainPageLink()V
    .locals 3

    .prologue
    .line 143
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    :goto_0
    return-void

    .line 146
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v1, "linkBuilder":Ljava/lang/StringBuilder;
    const-string v2, "http://m.weathercn.com/index.do?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v2, "&language="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {p0}, Lcn/nubia/weather/utils/LinkUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v2, "&smartid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    iget-object v2, p0, Lcn/nubia/weather/utils/LinkUtils;->mAreaId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v2, "&partner="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v2, "1000001030"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "link":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startViewLink(Ljava/lang/String;)V
    .locals 1
    .param p1, "link"    # Ljava/lang/String;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;Z)V

    .line 191
    return-void
.end method

.method public startViewLink(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "link"    # Ljava/lang/String;
    .param p2, "needPatenerCode"    # Z

    .prologue
    .line 193
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/app/WeatherApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 194
    .local v1, "context":Landroid/content/Context;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 214
    :goto_0
    return-void

    .line 197
    :cond_0
    if-eqz p2, :cond_1

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 199
    .local v4, "linkBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    const-string v5, "&partner="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v5, "1000001030"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    .end local v4    # "linkBuilder":Ljava/lang/StringBuilder;
    :cond_1
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 206
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 207
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 208
    .local v0, "content_url":Landroid/net/Uri;
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 209
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 210
    invoke-virtual {v1, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 211
    .end local v0    # "content_url":Landroid/net/Uri;
    .end local v3    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    .line 212
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
