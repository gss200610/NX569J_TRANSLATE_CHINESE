.class public Lcn/nubia/WeatherAnimation/Weather/WeatherHaze;
.super Lcn/nubia/WeatherAnimation/Weather/Weather;
.source "WeatherHaze.java"


# direct methods
.method public constructor <init>(IIFF)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/WeatherAnimation/Weather/Weather;-><init>(IIFF)V

    .line 8
    sget-object v2, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_HAZE_NAME:[I

    .line 9
    .local v2, "cloudNameId":[I
    sget-object v1, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_HAZE_LOCATION:[[F

    .line 10
    .local v1, "cloudLocation":[[F
    sget-object v3, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_HAZE_SPEED:[F

    .line 11
    .local v3, "cloudSpeed":[F
    sget-object v0, Lcn/nubia/WeatherAnimation/Weather/CloudUtil;->DAY_HAZE_ALPHA:[F

    .line 13
    .local v0, "cloudAlpha":[F
    array-length v5, v2

    .line 15
    .local v5, "n":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-lt v4, v5, :cond_0

    .line 18
    return-void

    .line 16
    :cond_0
    aget v6, v2, v4

    aget-object v7, v1, v4

    aget v8, v3, v4

    aget v9, v0, v4

    invoke-virtual {p0, v6, v7, v8, v9}, Lcn/nubia/WeatherAnimation/Weather/WeatherHaze;->addCloud(I[FFF)Lcn/nubia/WeatherAnimation/Weather/Cloud;

    .line 15
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method
