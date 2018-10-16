.class public Lcn/nubia/weather/model/CityModel;
.super Lcn/nubia/weather/model/BaseModel;
.source "CityModel.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final TAG:Ljava/lang/String; = "CityModel"

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private city_cn:Ljava/lang/String;

.field private city_pinyin:Ljava/lang/String;

.field private city_py:Ljava/lang/String;

.field private country:Ljava/lang/String;

.field private id:I

.field private mCountryCode:Ljava/lang/String;

.field private mGmtOffSet:Ljava/lang/String;

.field private mParentCityKey:Ljava/lang/String;

.field private name_cn:Ljava/lang/String;

.field private name_pinyin:Ljava/lang/String;

.field private name_py:Ljava/lang/String;

.field private province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name_cn"    # Ljava/lang/String;
    .param p2, "areaId"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcn/nubia/weather/model/CityModel;->mAreaID:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "province"    # Ljava/lang/String;
    .param p2, "city_cn"    # Ljava/lang/String;
    .param p3, "city_pinyin"    # Ljava/lang/String;
    .param p4, "city_py"    # Ljava/lang/String;
    .param p5, "name_cn"    # Ljava/lang/String;
    .param p6, "name_pinyin"    # Ljava/lang/String;
    .param p7, "name_py"    # Ljava/lang/String;
    .param p8, "areaId"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-direct {p0}, Lcn/nubia/weather/model/BaseModel;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->province:Ljava/lang/String;

    .line 38
    iput-object p2, p0, Lcn/nubia/weather/model/CityModel;->city_cn:Ljava/lang/String;

    .line 39
    iput-object p3, p0, Lcn/nubia/weather/model/CityModel;->city_pinyin:Ljava/lang/String;

    .line 40
    iput-object p4, p0, Lcn/nubia/weather/model/CityModel;->city_py:Ljava/lang/String;

    .line 41
    iput-object p5, p0, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    .line 42
    iput-object p6, p0, Lcn/nubia/weather/model/CityModel;->name_pinyin:Ljava/lang/String;

    .line 43
    iput-object p7, p0, Lcn/nubia/weather/model/CityModel;->name_py:Ljava/lang/String;

    .line 44
    iput-object p8, p0, Lcn/nubia/weather/model/CityModel;->mAreaID:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private static buildForHuaFeng(Lcn/nubia/weather/jsonbean/CityInfo;)Lcn/nubia/weather/model/CityModel;
    .locals 7
    .param p0, "bean"    # Lcn/nubia/weather/jsonbean/CityInfo;

    .prologue
    const/4 v5, 0x0

    .line 250
    const/4 v3, 0x0

    .line 252
    .local v3, "result":Lcn/nubia/weather/model/CityModel;
    if-eqz p0, :cond_3

    .line 253
    :try_start_0
    new-instance v4, Lcn/nubia/weather/model/CityModel;

    invoke-direct {v4}, Lcn/nubia/weather/model/CityModel;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    .end local v3    # "result":Lcn/nubia/weather/model/CityModel;
    .local v4, "result":Lcn/nubia/weather/model/CityModel;
    :try_start_1
    invoke-virtual {v4, p0}, Lcn/nubia/weather/model/CityModel;->setBean(Lcn/nubia/weather/jsonbean/BaseJsonBean;)V

    .line 255
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 256
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcn/nubia/weather/model/CityModel;->setmAreaID(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v4, Lcn/nubia/weather/model/CityModel;->mParentCityKey:Ljava/lang/String;

    .line 261
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 262
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getLocalizedName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    .line 268
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 269
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->getLocalizedName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 270
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->getLocalizedName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/weather/model/CityModel;->province:Ljava/lang/String;

    .line 275
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 276
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$Country;->getLocalizedName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 277
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$Country;->getLocalizedName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/weather/model/CityModel;->country:Ljava/lang/String;

    .line 282
    :cond_1
    :goto_2
    iget-object v5, v4, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    iput-object v5, v4, Lcn/nubia/weather/model/CityModel;->city_cn:Ljava/lang/String;

    .line 283
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getParentCity()Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 284
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getParentCity()Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 285
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getParentCity()Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->getKey()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/weather/model/CityModel;->mParentCityKey:Ljava/lang/String;

    .line 286
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getParentCity()Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->getLocalizedName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 287
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getParentCity()Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$ParentCity;->getLocalizedName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/weather/model/CityModel;->city_cn:Ljava/lang/String;

    .line 290
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getTimeZone()Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 291
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getTimeZone()Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->getGmtOffset()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 292
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getTimeZone()Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$TimeZone;->getName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    move-object v3, v4

    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v3    # "result":Lcn/nubia/weather/model/CityModel;
    :cond_3
    :goto_3
    move-object v5, v3

    .line 306
    :goto_4
    return-object v5

    .end local v3    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v4    # "result":Lcn/nubia/weather/model/CityModel;
    :cond_4
    move-object v3, v4

    .line 259
    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v3    # "result":Lcn/nubia/weather/model/CityModel;
    goto :goto_4

    .line 263
    .end local v3    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v4    # "result":Lcn/nubia/weather/model/CityModel;
    :cond_5
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getEnglishName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 264
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getEnglishName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 302
    :catch_0
    move-exception v2

    move-object v3, v4

    .line 303
    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    .local v2, "e":Ljava/lang/Exception;
    .restart local v3    # "result":Lcn/nubia/weather/model/CityModel;
    :goto_5
    const-string v5, "CityModel"

    const-string v6, "Convert CityInfoBean To CityModel Fail. "

    invoke-static {v5, v6, v2}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 304
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v4    # "result":Lcn/nubia/weather/model/CityModel;
    :cond_6
    move-object v3, v4

    .line 266
    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v3    # "result":Lcn/nubia/weather/model/CityModel;
    goto :goto_4

    .line 271
    .end local v3    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v4    # "result":Lcn/nubia/weather/model/CityModel;
    :cond_7
    :try_start_2
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 272
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->getEnglishName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 273
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getAdministrativeArea()Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$AdministrativeArea;->getEnglishName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/weather/model/CityModel;->province:Ljava/lang/String;

    goto/16 :goto_1

    .line 278
    :cond_8
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 279
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$Country;->getEnglishName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 280
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$Country;->getEnglishName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcn/nubia/weather/model/CityModel;->country:Ljava/lang/String;

    goto/16 :goto_2

    .line 293
    :cond_9
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 294
    invoke-virtual {p0}, Lcn/nubia/weather/jsonbean/CityInfo;->getCountry()Lcn/nubia/weather/jsonbean/CityInfo$Country;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/jsonbean/CityInfo$Country;->getID()Ljava/lang/String;

    move-result-object v1

    .line 295
    .local v1, "countryID":Ljava/lang/String;
    const-string v0, "CN"

    .line 296
    .local v0, "chinaId":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 297
    const-string v5, "Asia/Shanghai"

    iput-object v5, v4, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .end local v0    # "chinaId":Ljava/lang/String;
    .end local v1    # "countryID":Ljava/lang/String;
    :cond_a
    move-object v3, v4

    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    .restart local v3    # "result":Lcn/nubia/weather/model/CityModel;
    goto/16 :goto_3

    .line 302
    :catch_1
    move-exception v2

    goto :goto_5
.end method

.method public static buildForHuaFeng(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p0, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/CityModel;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 200
    const/4 v7, 0x0

    .line 223
    :cond_0
    return-object v7

    .line 202
    :cond_1
    new-instance v6, Lcom/google/gson/Gson;

    invoke-direct {v6}, Lcom/google/gson/Gson;-><init>()V

    .line 203
    .local v6, "gson":Lcom/google/gson/Gson;
    const/4 v2, 0x0

    .line 205
    .local v2, "beans":[Lcn/nubia/weather/jsonbean/CityInfo;
    :try_start_0
    const-class v8, [Lcn/nubia/weather/jsonbean/CityInfo;

    invoke-virtual {v6, p0, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, [Lcn/nubia/weather/jsonbean/CityInfo;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :goto_0
    invoke-static {v2}, Lcn/nubia/weather/model/CityModel;->getCitySearchResults([Lcn/nubia/weather/jsonbean/CityInfo;)Ljava/util/List;

    move-result-object v5

    .line 211
    .local v5, "filteredCityBeans":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/jsonbean/CityInfo;>;"
    const/4 v7, 0x0

    .line 212
    .local v7, "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    const/4 v3, 0x0

    .line 213
    .local v3, "city":Lcn/nubia/weather/model/CityModel;
    if-eqz v2, :cond_0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    .line 214
    new-instance v7, Ljava/util/ArrayList;

    .end local v7    # "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 215
    .restart local v7    # "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_2
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/jsonbean/CityInfo;

    .line 216
    .local v1, "bean":Lcn/nubia/weather/jsonbean/CityInfo;
    invoke-virtual {v1, p0}, Lcn/nubia/weather/jsonbean/CityInfo;->setmJsonStr(Ljava/lang/String;)V

    .line 217
    invoke-static {v1}, Lcn/nubia/weather/model/CityModel;->buildForHuaFeng(Lcn/nubia/weather/jsonbean/CityInfo;)Lcn/nubia/weather/model/CityModel;

    move-result-object v3

    .line 218
    if-eqz v3, :cond_2

    .line 219
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 206
    .end local v1    # "bean":Lcn/nubia/weather/jsonbean/CityInfo;
    .end local v3    # "city":Lcn/nubia/weather/model/CityModel;
    .end local v5    # "filteredCityBeans":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/jsonbean/CityInfo;>;"
    .end local v7    # "result":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    :catch_0
    move-exception v4

    .line 207
    .local v4, "e":Lcom/google/gson/JsonSyntaxException;
    const-string v8, "CityModel"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buildForHuaFeng e = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/google/gson/JsonSyntaxException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-virtual {v4}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_0
.end method

.method public static buildForHuaFengWithSingleCity(Ljava/lang/String;)Lcn/nubia/weather/model/CityModel;
    .locals 8
    .param p0, "json"    # Ljava/lang/String;

    .prologue
    .line 179
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 180
    const/4 v4, 0x0

    .line 195
    :cond_0
    :goto_0
    return-object v4

    .line 182
    :cond_1
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 183
    .local v3, "gson":Lcom/google/gson/Gson;
    const/4 v1, 0x0

    .line 185
    .local v1, "bean":Lcn/nubia/weather/jsonbean/CityInfo;
    :try_start_0
    const-class v5, Lcn/nubia/weather/jsonbean/CityInfo;

    invoke-virtual {v3, p0, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcn/nubia/weather/jsonbean/CityInfo;

    move-object v1, v0
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 190
    :goto_1
    const/4 v4, 0x0

    .line 191
    .local v4, "result":Lcn/nubia/weather/model/CityModel;
    if-eqz v1, :cond_0

    .line 192
    new-instance v4, Lcn/nubia/weather/model/CityModel;

    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    invoke-direct {v4}, Lcn/nubia/weather/model/CityModel;-><init>()V

    .line 193
    .restart local v4    # "result":Lcn/nubia/weather/model/CityModel;
    invoke-static {v1}, Lcn/nubia/weather/model/CityModel;->buildForHuaFeng(Lcn/nubia/weather/jsonbean/CityInfo;)Lcn/nubia/weather/model/CityModel;

    move-result-object v4

    goto :goto_0

    .line 186
    .end local v4    # "result":Lcn/nubia/weather/model/CityModel;
    :catch_0
    move-exception v2

    .line 187
    .local v2, "e":Lcom/google/gson/JsonSyntaxException;
    const-string v5, "CityModel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "buildForHuaFeng e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v2}, Lcom/google/gson/JsonSyntaxException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getCitySearchResults([Lcn/nubia/weather/jsonbean/CityInfo;)Ljava/util/List;
    .locals 8
    .param p0, "cityInfos"    # [Lcn/nubia/weather/jsonbean/CityInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcn/nubia/weather/jsonbean/CityInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/jsonbean/CityInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 228
    if-nez p0, :cond_1

    .line 229
    const/4 v1, 0x0

    .line 246
    :cond_0
    return-object v1

    .line 231
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v1, "resultList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/jsonbean/CityInfo;>;"
    array-length v5, p0

    move v3, v4

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v0, p0, v3

    .line 233
    .local v0, "cityInfo":Lcn/nubia/weather/jsonbean/CityInfo;
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/CityInfo;->getSupplementalAdminAreas()[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 234
    invoke-virtual {v0}, Lcn/nubia/weather/jsonbean/CityInfo;->getSupplementalAdminAreas()[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;

    move-result-object v2

    .line 235
    .local v2, "supAreas":[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    array-length v6, v2

    const/4 v7, 0x1

    if-le v6, v7, :cond_3

    .line 232
    .end local v2    # "supAreas":[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 238
    .restart local v2    # "supAreas":[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    :cond_3
    array-length v6, v2

    if-lez v6, :cond_4

    aget-object v6, v2, v4

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->getLevel()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 239
    aget-object v6, v2, v4

    invoke-virtual {v6}, Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;->getLevel()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-gt v6, v7, :cond_2

    .line 244
    .end local v2    # "supAreas":[Lcn/nubia/weather/jsonbean/CityInfo$SupplementalAdminAreas;
    :cond_4
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method


# virtual methods
.method public equalsByPublishTimeAndID(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 163
    const/4 v0, 0x0

    return v0
.end method

.method public getCity_cn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->city_cn:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_pinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->city_pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getCity_py()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->city_py:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->country:Ljava/lang/String;

    return-object v0
.end method

.method public getGmtOffSet()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcn/nubia/weather/model/CityModel;->id:I

    return v0
.end method

.method public getName_cn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    return-object v0
.end method

.method public getName_pinyin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->name_pinyin:Ljava/lang/String;

    return-object v0
.end method

.method public getName_py()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->name_py:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->province:Ljava/lang/String;

    return-object v0
.end method

.method public getmCountryCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->mCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public getmParentCityKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->mParentCityKey:Ljava/lang/String;

    return-object v0
.end method

.method public setCity_cn(Ljava/lang/String;)V
    .locals 0
    .param p1, "city_cn"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->city_cn:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setCity_pinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "city_pinyin"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->city_pinyin:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setCity_py(Ljava/lang/String;)V
    .locals 0
    .param p1, "city_py"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->city_py:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setCountry(Ljava/lang/String;)V
    .locals 0
    .param p1, "country"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->country:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setGmtOffSet(Ljava/lang/String;)V
    .locals 0
    .param p1, "gmtOffSet"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 85
    iput p1, p0, Lcn/nubia/weather/model/CityModel;->id:I

    .line 86
    return-void
.end method

.method public setName_cn(Ljava/lang/String;)V
    .locals 0
    .param p1, "name_cn"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setName_pinyin(Ljava/lang/String;)V
    .locals 0
    .param p1, "name_pinyin"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->name_pinyin:Ljava/lang/String;

    .line 142
    return-void
.end method

.method public setName_py(Ljava/lang/String;)V
    .locals 0
    .param p1, "name_py"    # Ljava/lang/String;

    .prologue
    .line 149
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->name_py:Ljava/lang/String;

    .line 150
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 0
    .param p1, "province"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->province:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setToWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 1
    .param p1, "m"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 169
    iget-object v0, p0, Lcn/nubia/weather/model/CityModel;->mGmtOffSet:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcn/nubia/weather/model/WeatherModel;->setGmtOffSet(Ljava/lang/String;)V

    .line 170
    return-void
.end method

.method protected setType()V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public setmCountryCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "mCountryCode"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->mCountryCode:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setmParentCityKey(Ljava/lang/String;)V
    .locals 0
    .param p1, "mParentCityKey"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcn/nubia/weather/model/CityModel;->mParentCityKey:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "City [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/nubia/weather/model/CityModel;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", country="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->country:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", province="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->province:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city_cn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->city_cn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city_pinyin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->city_pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", city_py="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->city_py:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_cn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->name_cn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_pinyin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->name_pinyin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", name_py="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->name_py:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", areaId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/model/CityModel;->mAreaID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
