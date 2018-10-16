.class public Lcn/nubia/weather/model/Forecast5dModel;
.super Lcn/nubia/weather/model/BaseModel;
.source "Forecast5dModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;,
        Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Forecast5dModel"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private mCityInfo:Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;

.field private mForecasts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;",
            ">;"
        }
    .end annotation
.end field

.field private mPublishTime:Ljava/util/Date;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    .line 293
    return-void
.end method

.method public static build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;)Lcn/nubia/weather/model/Forecast5dModel;
    .locals 8
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;

    .prologue
    const/4 v5, 0x0

    .line 154
    new-instance v4, Lcn/nubia/weather/model/Forecast5dModel;

    invoke-direct {v4}, Lcn/nubia/weather/model/Forecast5dModel;-><init>()V

    .line 155
    .local v4, "result":Lcn/nubia/weather/model/Forecast5dModel;
    invoke-virtual {v4, p0}, Lcn/nubia/weather/model/Forecast5dModel;->setmAreaID(Ljava/lang/String;)V

    .line 156
    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {v4, p1}, Lcn/nubia/weather/model/Forecast5dModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 159
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v2, "f":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    const/4 v3, 0x0

    .line 161
    .local v3, "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;->getF()Lcn/nubia/weather/jsonbean/ForecastListJsonBean;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/ForecastListJsonBean;->getF1()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/jsonbean/ForecastJsonBean;

    .line 162
    .local v0, "b":Lcn/nubia/weather/jsonbean/ForecastJsonBean;
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/ForecastJsonBean;->isValid()Z

    move-result v7

    if-nez v7, :cond_1

    move-object v4, v5

    .line 183
    .end local v0    # "b":Lcn/nubia/weather/jsonbean/ForecastJsonBean;
    .end local v2    # "f":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v3    # "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .end local v4    # "result":Lcn/nubia/weather/model/Forecast5dModel;
    :cond_0
    :goto_1
    return-object v4

    .line 165
    .restart local v0    # "b":Lcn/nubia/weather/jsonbean/ForecastJsonBean;
    .restart local v2    # "f":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .restart local v3    # "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .restart local v4    # "result":Lcn/nubia/weather/model/Forecast5dModel;
    :cond_1
    invoke-static {p0, v0}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/ForecastJsonBean;)Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    move-result-object v3

    .line 166
    if-eqz v3, :cond_2

    .line 167
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 179
    .end local v0    # "b":Lcn/nubia/weather/jsonbean/ForecastJsonBean;
    .end local v2    # "f":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v3    # "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Ljava/lang/Exception;
    const-string v5, "Forecast5dModel"

    const-string v6, "Convert Forecast5dJsonBean  To Forecast5dModel Fail. "

    invoke-static {v5, v6, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "b":Lcn/nubia/weather/jsonbean/ForecastJsonBean;
    .restart local v2    # "f":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .restart local v3    # "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :cond_2
    move-object v4, v5

    .line 169
    goto :goto_1

    .line 172
    .end local v0    # "b":Lcn/nubia/weather/jsonbean/ForecastJsonBean;
    :cond_3
    :try_start_1
    iput-object v2, v4, Lcn/nubia/weather/model/Forecast5dModel;->mForecasts:Ljava/util/List;

    .line 173
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;->getF()Lcn/nubia/weather/jsonbean/ForecastListJsonBean;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/ForecastListJsonBean;->getF0()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_4

    move-object v4, v5

    .line 174
    goto :goto_1

    .line 176
    :cond_4
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;->getF()Lcn/nubia/weather/jsonbean/ForecastListJsonBean;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/ForecastListJsonBean;->getF0()Ljava/lang/String;

    move-result-object v5

    const-string v6, "yyyyMMddHHmm"

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/TimeUtils;->getDateByStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/weather/model/Forecast5dModel;->mPublishTime:Ljava/util/Date;

    .line 178
    invoke-virtual {p1}, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;->getC()Lcn/nubia/weather/jsonbean/CityJsonBean;

    move-result-object v5

    invoke-static {p0, v5}, Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;->build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/CityJsonBean;)Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/weather/model/Forecast5dModel;->mCityInfo:Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public static build(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/Forecast5dModel;
    .locals 4
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 140
    const/4 v2, 0x0

    .line 150
    :cond_0
    :goto_0
    return-object v2

    .line 142
    :cond_1
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 143
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;

    invoke-virtual {v1, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;

    .line 144
    .local v0, "bean":Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;
    const/4 v2, 0x0

    .line 145
    .local v2, "result":Lcn/nubia/weather/model/Forecast5dModel;
    if-eqz v0, :cond_0

    .line 146
    new-instance v2, Lcn/nubia/weather/model/Forecast5dModel;

    .end local v2    # "result":Lcn/nubia/weather/model/Forecast5dModel;
    invoke-direct {v2}, Lcn/nubia/weather/model/Forecast5dModel;-><init>()V

    .line 147
    .restart local v2    # "result":Lcn/nubia/weather/model/Forecast5dModel;
    invoke-virtual {v0, p1}, Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;->setmJsonStr(Ljava/lang/String;)V

    .line 148
    invoke-static {p0, v0}, Lcn/nubia/weather/model/Forecast5dModel;->build(Ljava/lang/String;Lcn/nubia/weather/jsonbean/Forecast5dJsonBean;)Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v2

    goto :goto_0
.end method

.method private static buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;)Lcn/nubia/weather/model/Forecast5dModel;
    .locals 10
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "bean"    # Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 106
    const/4 v3, 0x0

    .line 107
    .local v3, "result":Lcn/nubia/weather/model/Forecast5dModel;
    if-eqz p1, :cond_3

    iget-object v5, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;->DailyForecasts:[Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;

    if-eqz v5, :cond_3

    .line 108
    new-instance v3, Lcn/nubia/weather/model/Forecast5dModel;

    .end local v3    # "result":Lcn/nubia/weather/model/Forecast5dModel;
    invoke-direct {v3}, Lcn/nubia/weather/model/Forecast5dModel;-><init>()V

    .line 109
    .restart local v3    # "result":Lcn/nubia/weather/model/Forecast5dModel;
    invoke-virtual {v3, p0}, Lcn/nubia/weather/model/Forecast5dModel;->setmAreaID(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v3, p1}, Lcn/nubia/weather/model/Forecast5dModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 112
    .local v1, "forecast1dModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    iget-object v7, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;->DailyForecasts:[Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;

    array-length v8, v7

    move v5, v6

    :goto_0
    if-ge v5, v8, :cond_2

    aget-object v0, v7, v5

    .line 113
    .local v0, "dailyForecast":Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->isValid()Z

    move-result v9

    if-nez v9, :cond_1

    .line 135
    .end local v0    # "dailyForecast":Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;
    .end local v1    # "forecast1dModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    :cond_0
    :goto_1
    return-object v4

    .line 116
    .restart local v0    # "dailyForecast":Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;
    .restart local v1    # "forecast1dModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    :cond_1
    invoke-static {p0, v0}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;)Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    move-result-object v2

    .line 117
    .local v2, "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    if-eqz v2, :cond_0

    .line 118
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    .end local v0    # "dailyForecast":Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;
    .end local v2    # "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :cond_2
    iput-object v1, v3, Lcn/nubia/weather/model/Forecast5dModel;->mForecasts:Ljava/util/List;

    .line 124
    iget-object v5, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;->DailyForecasts:[Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;->DailyForecasts:[Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;

    array-length v5, v5

    if-lez v5, :cond_0

    iget-object v5, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;->DailyForecasts:[Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;

    aget-object v5, v5, v6

    if-eqz v5, :cond_0

    .line 126
    iget-object v5, p1, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;->DailyForecasts:[Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;

    aget-object v5, v5, v6

    iget-object v5, v5, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean$DailyForecasts;->Date:Ljava/lang/String;

    .line 127
    invoke-static {v5}, Lcn/nubia/weather/utils/TimeUtils;->getISODateByStr(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    iput-object v5, v3, Lcn/nubia/weather/model/Forecast5dModel;->mPublishTime:Ljava/util/Date;

    .line 128
    iget-object v5, v3, Lcn/nubia/weather/model/Forecast5dModel;->mPublishTime:Ljava/util/Date;

    if-eqz v5, :cond_0

    .end local v1    # "forecast1dModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    :cond_3
    move-object v4, v3

    .line 135
    goto :goto_1
.end method

.method public static buildForHuaFeng(Ljava/lang/String;Ljava/lang/String;)Lcn/nubia/weather/model/Forecast5dModel;
    .locals 8
    .param p0, "areadID"    # Ljava/lang/String;
    .param p1, "json"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 87
    const/4 v4, 0x0

    .line 102
    :cond_0
    :goto_0
    return-object v4

    .line 89
    :cond_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 90
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 92
    .local v1, "bean":Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;
    :try_start_0
    const-class v5, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;

    invoke-virtual {v3, p1, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;

    move-object v1, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :goto_1
    const/4 v4, 0x0

    .line 98
    .local v4, "result":Lcn/nubia/weather/model/Forecast5dModel;
    if-eqz v1, :cond_0

    .line 99
    invoke-virtual {v1, p1}, Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;->setmJsonStr(Ljava/lang/String;)V

    .line 100
    invoke-static {p0, v1}, Lcn/nubia/weather/model/Forecast5dModel;->buildForHuaFeng(Ljava/lang/String;Lcn/nubia/weather/jsonbean/huafeng/DailyForecastJsonBean;)Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v4

    goto :goto_0

    .line 93
    .end local v4    # "result":Lcn/nubia/weather/model/Forecast5dModel;
    :catch_0
    move-exception v2

    .line 94
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    .line 95
    const-string v5, "Forecast5dModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildForHuaFeng e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public equalsByPublishTimeAndID(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 64
    if-nez p1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v2

    .line 67
    :cond_1
    if-ne p0, p1, :cond_2

    move v2, v1

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    instance-of v3, p1, Lcn/nubia/weather/model/Forecast5dModel;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 71
    check-cast v0, Lcn/nubia/weather/model/Forecast5dModel;

    .line 72
    .local v0, "info":Lcn/nubia/weather/model/Forecast5dModel;
    invoke-virtual {p0}, Lcn/nubia/weather/model/Forecast5dModel;->getmAreaID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/Forecast5dModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 73
    invoke-virtual {p0}, Lcn/nubia/weather/model/Forecast5dModel;->getmPublishTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v0}, Lcn/nubia/weather/model/Forecast5dModel;->getmPublishTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public getmCityInfo()Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel;->mCityInfo:Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;

    return-object v0
.end method

.method public getmForecasts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel;->mForecasts:Ljava/util/List;

    return-object v0
.end method

.method public getmPublishTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel;->mPublishTime:Ljava/util/Date;

    return-object v0
.end method

.method public setToWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 0
    .param p1, "m"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 449
    invoke-virtual {p1, p0}, Lcn/nubia/weather/model/WeatherModel;->setmForecast5d(Lcn/nubia/weather/model/Forecast5dModel;)V

    .line 450
    return-void
.end method

.method protected setType()V
    .locals 1

    .prologue
    .line 455
    sget-object v0, Lcn/nubia/weather/data/DataCenter$ModelType;->FORECAST5D:Lcn/nubia/weather/data/DataCenter$ModelType;

    iput-object v0, p0, Lcn/nubia/weather/model/Forecast5dModel;->mType:Lcn/nubia/weather/data/DataCenter$ModelType;

    .line 456
    return-void
.end method

.method public setmCityInfo(Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;)V
    .locals 0
    .param p1, "mCityInfo"    # Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/weather/model/Forecast5dModel;->mCityInfo:Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;

    .line 46
    return-void
.end method

.method public setmForecasts(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, "mForecasts":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    iput-object p1, p0, Lcn/nubia/weather/model/Forecast5dModel;->mForecasts:Ljava/util/List;

    .line 54
    return-void
.end method

.method public setmPublishTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "mPublishTime"    # Ljava/util/Date;

    .prologue
    .line 37
    iput-object p1, p0, Lcn/nubia/weather/model/Forecast5dModel;->mPublishTime:Ljava/util/Date;

    .line 38
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Forecast5dModel [mPublishTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/Forecast5dModel;->mPublishTime:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCityInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/Forecast5dModel;->mCityInfo:Lcn/nubia/weather/model/Forecast5dModel$CityInfoModel;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mForecasts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/Forecast5dModel;->mForecasts:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
