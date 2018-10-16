.class public Lcn/nubia/WeatherAnimation/Weather/WeatherDefault;
.super Lcn/nubia/WeatherAnimation/Weather/Weather;
.source "WeatherDefault.java"


# direct methods
.method public constructor <init>(IIFF)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/WeatherAnimation/Weather/Weather;-><init>(IIFF)V

    .line 9
    return-void
.end method


# virtual methods
.method public getFPS()I
    .locals 1

    .prologue
    .line 12
    const/4 v0, -0x1

    return v0
.end method
