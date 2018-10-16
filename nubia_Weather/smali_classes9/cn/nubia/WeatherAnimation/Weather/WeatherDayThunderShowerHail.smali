.class public Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;
.super Lcn/nubia/WeatherAnimation/Weather/Weather;
.source "WeatherDayThunderShowerHail.java"


# instance fields
.field private mParticleSystem:Lcn/nubia/Particle/ParticleSystem;

.field private mParticleSystemBG:Lcn/nubia/Particle/ParticleSystem;

.field private mThunderControl:Lcn/nubia/WeatherAnimation/ThunderControl;


# direct methods
.method public constructor <init>(IIFF)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    .line 16
    invoke-direct/range {p0 .. p4}, Lcn/nubia/WeatherAnimation/Weather/Weather;-><init>(IIFF)V

    .line 18
    new-instance v0, Lcn/nubia/Particle/ParticleSystemRain;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/Particle/ParticleSystemRain;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mParticleSystemBG:Lcn/nubia/Particle/ParticleSystem;

    .line 19
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mParticleSystemBG:Lcn/nubia/Particle/ParticleSystem;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystem;->setLevel(I)V

    .line 20
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mParticleSystemBG:Lcn/nubia/Particle/ParticleSystem;

    invoke-virtual {p0, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->addParticle(Lcn/nubia/Particle/ParticleSystem;)V

    .line 22
    new-instance v0, Lcn/nubia/Particle/ParticleSystemHail;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/Particle/ParticleSystemHail;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mParticleSystem:Lcn/nubia/Particle/ParticleSystem;

    .line 23
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mParticleSystem:Lcn/nubia/Particle/ParticleSystem;

    invoke-virtual {p0, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->addParticle(Lcn/nubia/Particle/ParticleSystem;)V

    .line 26
    sget-object v8, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_THUNDER_SHOWER_NAME:[I

    .line 27
    .local v8, "cloudNameId":[I
    sget-object v7, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_THUNDER_SHOWER_LOCATION:[[F

    .line 28
    .local v7, "cloudLocation":[[F
    sget-object v9, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_THUNDER_SHOWER_SPEED:[F

    .line 29
    .local v9, "cloudSpeed":[F
    sget-object v6, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_THUNDER_SHOWER_ALPHA:[F

    .line 31
    .local v6, "cloudAlpha":[F
    array-length v11, v8

    .line 33
    .local v11, "n":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-lt v10, v11, :cond_0

    .line 37
    new-instance v0, Lcn/nubia/WeatherAnimation/ThunderControl;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/WeatherAnimation/ThunderControl;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mThunderControl:Lcn/nubia/WeatherAnimation/ThunderControl;

    .line 38
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mThunderControl:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->addThunderSystem()V

    .line 39
    return-void

    .line 34
    :cond_0
    aget v0, v8, v10

    aget-object v1, v7, v10

    aget v2, v9, v10

    aget v3, v6, v10

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->addCloud(I[FFF)Lcn/nubia/WeatherAnimation/Weather/Cloud;

    .line 33
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcn/nubia/WeatherAnimation/Weather/Weather;->destroy()V

    .line 63
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mThunderControl:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->destroy()V

    .line 64
    return-void
.end method

.method public getFPS()I
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method public onProcessFrame(F)V
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 43
    invoke-super {p0, p1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->onProcessFrame(F)V

    .line 44
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mThunderControl:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-virtual {v0, p1}, Lcn/nubia/WeatherAnimation/ThunderControl;->onProcessFrame(F)V

    .line 45
    return-void
.end method

.method public setShaderPrograms([Lcn/nubia/OpenGL/ShaderProgram;)V
    .locals 3
    .param p1, "program"    # [Lcn/nubia/OpenGL/ShaderProgram;

    .prologue
    const/4 v2, 0x1

    .line 49
    invoke-super {p0, p1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->setShaderPrograms([Lcn/nubia/OpenGL/ShaderProgram;)V

    .line 50
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mParticleSystem:Lcn/nubia/Particle/ParticleSystem;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystem;->setShaderProgram(Lcn/nubia/OpenGL/ShaderProgram;)V

    .line 51
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mParticleSystemBG:Lcn/nubia/Particle/ParticleSystem;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherDayThunderShowerHail;->mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystem;->setShaderProgram(Lcn/nubia/OpenGL/ShaderProgram;)V

    .line 53
    return-void
.end method
