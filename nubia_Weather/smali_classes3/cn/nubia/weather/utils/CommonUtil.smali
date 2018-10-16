.class public Lcn/nubia/weather/utils/CommonUtil;
.super Ljava/lang/Object;
.source "CommonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doubleFormat(D)D
    .locals 4
    .param p0, "num"    # D

    .prologue
    const-wide v2, 0x408f400000000000L    # 1000.0

    .line 24
    mul-double v0, p0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-double v0, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static getRoundUpNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "numStr"    # Ljava/lang/String;

    .prologue
    .line 33
    const/4 v1, 0x0

    .line 35
    .local v1, "result":Ljava/lang/String;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->rint(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 39
    :goto_0
    return-object v1

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWindDegree(Ljava/lang/String;)I
    .locals 4
    .param p0, "speed"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    .line 63
    .local v0, "speedVaule":D
    const-wide v2, 0x3ff147ae147ae148L    # 1.08

    cmpg-double v2, v0, v2

    if-gez v2, :cond_0

    .line 64
    const/4 v2, 0x0

    .line 98
    :goto_0
    return v2

    .line 65
    :cond_0
    const-wide v2, 0x40170a3d70a3d70aL    # 5.76

    cmpg-double v2, v0, v2

    if-gez v2, :cond_1

    .line 66
    const/4 v2, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const-wide v2, 0x40287ae147ae147bL    # 12.24

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    .line 68
    const/4 v2, 0x2

    goto :goto_0

    .line 69
    :cond_2
    const-wide v2, 0x4033cccccccccccdL    # 19.8

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    .line 70
    const/4 v2, 0x3

    goto :goto_0

    .line 71
    :cond_3
    const-wide v2, 0x403ccccccccccccdL    # 28.8

    cmpg-double v2, v0, v2

    if-gez v2, :cond_4

    .line 72
    const/4 v2, 0x4

    goto :goto_0

    .line 73
    :cond_4
    const-wide v2, 0x404370a3d70a3d71L    # 38.88

    cmpg-double v2, v0, v2

    if-gez v2, :cond_5

    .line 74
    const/4 v2, 0x5

    goto :goto_0

    .line 75
    :cond_5
    const-wide v2, 0x4049051eb851eb85L    # 50.04

    cmpg-double v2, v0, v2

    if-gez v2, :cond_6

    .line 76
    const/4 v2, 0x6

    goto :goto_0

    .line 77
    :cond_6
    const-wide v2, 0x404ef5c28f5c28f6L    # 61.92

    cmpg-double v2, v0, v2

    if-gez v2, :cond_7

    .line 78
    const/4 v2, 0x7

    goto :goto_0

    .line 79
    :cond_7
    const-wide v2, 0x4052b851eb851eb8L    # 74.88

    cmpg-double v2, v0, v2

    if-gez v2, :cond_8

    .line 80
    const/16 v2, 0x8

    goto :goto_0

    .line 81
    :cond_8
    const-wide v2, 0x40560ccccccccccdL    # 88.2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_9

    .line 82
    const/16 v2, 0x9

    goto :goto_0

    .line 83
    :cond_9
    const-wide v2, 0x4059a66666666666L    # 102.6

    cmpg-double v2, v0, v2

    if-gez v2, :cond_a

    .line 84
    const/16 v2, 0xa

    goto :goto_0

    .line 85
    :cond_a
    const-wide v2, 0x405d6e147ae147aeL    # 117.72

    cmpg-double v2, v0, v2

    if-gez v2, :cond_b

    .line 86
    const/16 v2, 0xb

    goto :goto_0

    .line 87
    :cond_b
    const-wide v2, 0x4060a66666666666L    # 133.2

    cmpg-double v2, v0, v2

    if-gez v2, :cond_c

    .line 88
    const/16 v2, 0xc

    goto/16 :goto_0

    .line 89
    :cond_c
    const-wide v2, 0x4062accccccccccdL    # 149.4

    cmpg-double v2, v0, v2

    if-gez v2, :cond_d

    .line 90
    const/16 v2, 0xd

    goto/16 :goto_0

    .line 91
    :cond_d
    const-wide v2, 0x4064ca3d70a3d70aL    # 166.32

    cmpg-double v2, v0, v2

    if-gez v2, :cond_e

    .line 92
    const/16 v2, 0xe

    goto/16 :goto_0

    .line 93
    :cond_e
    const-wide v2, 0x4066f33333333333L    # 183.6

    cmpg-double v2, v0, v2

    if-gez v2, :cond_f

    .line 94
    const/16 v2, 0xf

    goto/16 :goto_0

    .line 95
    :cond_f
    const-wide v2, 0x40693eb851eb851fL    # 201.96

    cmpg-double v2, v0, v2

    if-gez v2, :cond_10

    .line 96
    const/16 v2, 0x10

    goto/16 :goto_0

    .line 98
    :cond_10
    const/16 v2, 0x11

    goto/16 :goto_0
.end method

.method public static getWindDegreeStr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "speed"    # Ljava/lang/String;

    .prologue
    .line 49
    invoke-static {p0}, Lcn/nubia/weather/utils/CommonUtil;->getWindDegree(Ljava/lang/String;)I

    move-result v0

    .line 50
    .local v0, "degree":I
    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    .line 51
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090147

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 53
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
