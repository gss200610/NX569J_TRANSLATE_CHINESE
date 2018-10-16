.class public Lcn/nubia/WeatherAnimation/Weather/WeatherNightSandStorm;
.super Lcn/nubia/WeatherAnimation/Weather/Weather;
.source "WeatherNightSandStorm.java"


# instance fields
.field private mParticleSystem:Lcn/nubia/Particle/ParticleSystem;


# direct methods
.method public constructor <init>(IIFF)V
    .locals 12
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    .line 13
    invoke-direct/range {p0 .. p4}, Lcn/nubia/WeatherAnimation/Weather/Weather;-><init>(IIFF)V

    .line 15
    sget-object v8, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SAND_STORM_NAME:[I

    .line 16
    .local v8, "cloudNameId":[I
    sget-object v7, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SAND_STORM_LOCATION:[[F

    .line 17
    .local v7, "cloudLocation":[[F
    sget-object v9, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SAND_STORM_SPEED:[F

    .line 18
    .local v9, "cloudSpeed":[F
    sget-object v6, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->NIGHT_SAND_STORM_ALPHA:[F

    .line 20
    .local v6, "cloudAlpha":[F
    array-length v11, v8

    .line 22
    .local v11, "n":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-lt v10, v11, :cond_0

    .line 26
    new-instance v0, Lcn/nubia/Particle/ParticleSystemSandStorm;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/Particle/ParticleSystemSandStorm;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSandStorm;->mParticleSystem:Lcn/nubia/Particle/ParticleSystem;

    .line 27
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSandStorm;->mParticleSystem:Lcn/nubia/Particle/ParticleSystem;

    sget v1, Lcn/nubia/weather/R$drawable;->particle_sand_storm_night:I

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystem;->setBitmapId(I)V

    .line 28
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSandStorm;->mParticleSystem:Lcn/nubia/Particle/ParticleSystem;

    invoke-virtual {p0, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSandStorm;->addParticle(Lcn/nubia/Particle/ParticleSystem;)V

    .line 29
    return-void

    .line 23
    :cond_0
    aget v0, v8, v10

    aget-object v1, v7, v10

    aget v2, v9, v10

    aget v3, v6, v10

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSandStorm;->addCloud(I[FFF)Lcn/nubia/WeatherAnimation/Weather/Cloud;

    .line 22
    add-int/lit8 v10, v10, 0x1

    goto :goto_0
.end method


# virtual methods
.method public setShaderPrograms([Lcn/nubia/OpenGL/ShaderProgram;)V
    .locals 3
    .param p1, "program"    # [Lcn/nubia/OpenGL/ShaderProgram;

    .prologue
    .line 33
    invoke-super {p0, p1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->setShaderPrograms([Lcn/nubia/OpenGL/ShaderProgram;)V

    .line 34
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSandStorm;->mParticleSystem:Lcn/nubia/Particle/ParticleSystem;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/WeatherNightSandStorm;->mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystem;->setShaderProgram(Lcn/nubia/OpenGL/ShaderProgram;)V

    .line 35
    return-void
.end method
