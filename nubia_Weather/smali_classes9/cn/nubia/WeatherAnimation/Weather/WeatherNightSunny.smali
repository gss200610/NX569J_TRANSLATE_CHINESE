.class public Lcn/nubia/WeatherAnimation/Weather/WeatherNightSunny;
.super Lcn/nubia/WeatherAnimation/Weather/Weather;
.source "WeatherNightSunny.java"


# instance fields
.field private mMeteoriteControl:Lcn/nubia/WeatherAnimation/MeteoriteControl;


# direct methods
.method public constructor <init>(IIFF)V
    .locals 13
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    .line 10
    invoke-direct/range {p0 .. p4}, Lcn/nubia/WeatherAnimation/Weather/Weather;-><init>(IIFF)V

    .line 12
    sget-object v9, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SUNNY_NAME:[I

    .line 13
    .local v9, "cloudNameId":[I
    sget-object v8, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SUNNY_LOCATION:[[F

    .line 14
    .local v8, "cloudLocation":[[F
    sget-object v10, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SUNNY_SPEED:[F

    .line 15
    .local v10, "cloudSpeed":[F
    sget-object v7, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SUNNY_ALPHA:[F

    .line 17
    .local v7, "cloudAlpha":[F
    array-length v12, v9

    .line 19
    .local v12, "n":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-lt v11, v12, :cond_0

    .line 24
    new-instance v0, Lcn/nubia/Particle/ParticleSystemStar;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/Particle/ParticleSystemStar;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 25
    .local v0, "particleSystem":Lcn/nubia/Particle/ParticleSystemStar;
    invoke-virtual {p0, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSunny;->addParticle(Lcn/nubia/Particle/ParticleSystem;)V

    .line 27
    new-instance v1, Lcn/nubia/WeatherAnimation/MeteoriteControl;

    move-object v2, p0

    move v3, p1

    move v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcn/nubia/WeatherAnimation/MeteoriteControl;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSunny;->mMeteoriteControl:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    .line 28
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSunny;->mMeteoriteControl:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->addMeteoriteSystem()V

    .line 29
    return-void

    .line 20
    .end local v0    # "particleSystem":Lcn/nubia/Particle/ParticleSystemStar;
    :cond_0
    aget v1, v9, v11

    aget-object v2, v8, v11

    aget v3, v10, v11

    aget v4, v7, v11

    invoke-virtual {p0, v1, v2, v3, v4}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSunny;->addCloud(I[FFF)Lcn/nubia/WeatherAnimation/Weather/Cloud;

    .line 19
    add-int/lit8 v11, v11, 0x1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 39
    invoke-super {p0}, Lcn/nubia/WeatherAnimation/Weather/Weather;->destroy()V

    .line 40
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSunny;->mMeteoriteControl:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->destroy()V

    .line 41
    return-void
.end method

.method public onProcessFrame(F)V
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->onProcessFrame(F)V

    .line 34
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSunny;->mMeteoriteControl:Lcn/nubia/WeatherAnimation/MeteoriteControl;

    invoke-virtual {v0, p1}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->onProcessFrame(F)V

    .line 35
    return-void
.end method
