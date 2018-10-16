.class public Lcn/nubia/WeatherAnimation/Weather/WeatherRainHail;
.super Lcn/nubia/WeatherAnimation/Weather/Weather;
.source "WeatherRainHail.java"


# direct methods
.method public constructor <init>(IIFF)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/WeatherAnimation/Weather/Weather;-><init>(IIFF)V

    .line 14
    new-instance v0, Lcn/nubia/Particle/ParticleSystemRain;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/Particle/ParticleSystemRain;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 15
    .local v0, "particleSystem":Lcn/nubia/Particle/ParticleSystem;
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystem;->setLevel(I)V

    .line 17
    invoke-virtual {p0, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherRainHail;->addParticle(Lcn/nubia/Particle/ParticleSystem;)V

    .line 19
    new-instance v0, Lcn/nubia/Particle/ParticleSystemHail;

    .end local v0    # "particleSystem":Lcn/nubia/Particle/ParticleSystem;
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/Particle/ParticleSystemHail;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 20
    .restart local v0    # "particleSystem":Lcn/nubia/Particle/ParticleSystem;
    invoke-virtual {p0, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherRainHail;->addParticle(Lcn/nubia/Particle/ParticleSystem;)V

    .line 21
    return-void
.end method


# virtual methods
.method public getFPS()I
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    return v0
.end method
