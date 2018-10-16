.class public Lcn/nubia/WeatherAnimation/Weather/WeatherDaySunny;
.super Lcn/nubia/WeatherAnimation/Weather/Weather;
.source "WeatherDaySunny.java"


# direct methods
.method public constructor <init>(IIFF)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    .line 8
    invoke-direct/range {p0 .. p4}, Lcn/nubia/WeatherAnimation/Weather/Weather;-><init>(IIFF)V

    .line 11
    new-instance v0, Lcn/nubia/Particle/ParticleSystemShine;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/Particle/ParticleSystemShine;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 12
    .local v0, "particleSystem":Lcn/nubia/Particle/ParticleSystemShine;
    invoke-virtual {p0, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDaySunny;->addParticle(Lcn/nubia/Particle/ParticleSystem;)V

    .line 15
    sget-object v8, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_SUNNY_NAME:[I

    .line 16
    .local v8, "cloudNameId":[I
    sget-object v7, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_SUNY_LOCATION:[[F

    .line 17
    .local v7, "cloudLocation":[[F
    sget-object v9, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_SUNNY_SPEED:[F

    .line 18
    .local v9, "cloudSpeed":[F
    sget-object v6, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_SUNNY_ALPHA:[F

    .line 20
    .local v6, "cloudAlpha":[F
    array-length v11, v8

    .line 22
    .local v11, "n":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-lt v10, v11, :cond_0

    .line 25
    return-void

    .line 23
    :cond_0
    aget v1, v8, v10

    aget-object v2, v7, v10

    aget v3, v9, v10

    aget v4, v6, v10

    invoke-virtual {p0, v1, v2, v3, v4}, Lcn/nubia/WeatherAnimation/Weather/WeatherDaySunny;->addCloud(I[FFF)Lcn/nubia/WeatherAnimation/Weather/Cloud;

    .line 22
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method
