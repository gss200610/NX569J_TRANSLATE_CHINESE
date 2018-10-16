.class public Lcn/nubia/WeatherAnimation/Weather/WeatherNightDust;
.super Lcn/nubia/WeatherAnimation/Weather/Weather;
.source "WeatherNightDust.java"


# direct methods
.method public constructor <init>(IIFF)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/WeatherAnimation/Weather/Weather;-><init>(IIFF)V

    .line 12
    new-instance v0, Lcn/nubia/Particle/ParticleSystemSandStorm;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/nubia/Particle/ParticleSystemSandStorm;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 13
    .local v0, "particleSystem":Lcn/nubia/Particle/ParticleSystem;
    sget v1, Lcn/nubia/weather/R$drawable;->particle_sand_storm_night:I

    invoke-virtual {v0, v1}, Lcn/nubia/Particle/ParticleSystem;->setBitmapId(I)V

    .line 14
    invoke-virtual {p0, v0}, Lcn/nubia/WeatherAnimation/Weather/WeatherNightDust;->addParticle(Lcn/nubia/Particle/ParticleSystem;)V

    .line 15
    return-void
.end method
