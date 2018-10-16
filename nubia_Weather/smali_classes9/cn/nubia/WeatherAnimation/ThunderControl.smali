.class public Lcn/nubia/WeatherAnimation/ThunderControl;
.super Ljava/lang/Object;
.source "ThunderControl.java"


# instance fields
.field private final BIG_THUNDER_INFO:[[I

.field private final BIG_THUNDER_LIFE:F

.field private final BIG_THUNDER_SIZE:[[F

.field private final CLOUD_TWINKLE_BITMAP_ID:[I

.field private final CLOUD_TWINKLE_LIFE:F

.field private CLOUD_TWINKLE_RECT:[F

.field private final CLOUD_TWINKLE_SIZE:[[F

.field private final CLOUD_TWINKLE_STRONG_ID:[I

.field private final CLOUD_TWINKLE_STRONG_SIZE:[[F

.field private final SMALL_SMALL_THUNDER_START_SCALE:[F

.field private final SMALL_THUNDER_LIFE:F

.field private SMALL_THUNDER_RECT:[F

.field private final THUNDER_SMALL_ID:[I

.field private final THUNDER_SMALL_SIZE:[[F

.field private final THUNDER_SMALL_SMALL_SIZE:[[F

.field private mBigThunder:Lcn/nubia/WeatherAnimation/Weather/Thunder;

.field private mBigThunderAnimator:Landroid/animation/ValueAnimator;

.field private mBigThunderDelayHandler:Landroid/os/Handler;

.field private mBigThunderDelayRunnable:Ljava/lang/Runnable;

.field private mBigThunderHandler:Landroid/os/Handler;

.field private mBigThunderRunnable:Ljava/lang/Runnable;

.field private mCloudTwinkle:Lcn/nubia/WeatherAnimation/Weather/Thunder;

.field private mCloudTwinkleAnimator:Landroid/animation/ValueAnimator;

.field private mCloudTwinkleHandler:Landroid/os/Handler;

.field private mCloudTwinkleRunnable:Ljava/lang/Runnable;

.field private mHeightScale:F

.field private mInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mNeedAddBigThunder:Z

.field private mNeedAddCloudTwinkle:Z

.field private mNeedAddSmallThunder:Z

.field private mRandom:Ljava/util/Random;

.field private mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

.field private mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

.field private mSmallThunderAnimatorSet:Landroid/animation/AnimatorSet;

.field private mSmallThunderHandler:Landroid/os/Handler;

.field private mSmallThunderLocation:[F

.field private mSmallThunderRunnable:Ljava/lang/Runnable;

.field private mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

.field private mWidthScale:F


# direct methods
.method public constructor <init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
    .locals 8
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "widthScale"    # F
    .param p5, "heightScale"    # F

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [[I

    .line 18
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/16 v2, 0x15f

    aput v2, v1, v4

    aput v3, v1, v3

    sget v2, Lcn/nubia/weather/R$drawable;->weather_thunder_big_01:I

    aput v2, v1, v5

    aput-object v1, v0, v4

    .line 19
    const/4 v1, 0x4

    new-array v1, v1, [I

    aput v3, v1, v3

    sget v2, Lcn/nubia/weather/R$drawable;->weather_thunder_big_02:I

    aput v2, v1, v5

    aput-object v1, v0, v7

    .line 20
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/16 v2, 0x255

    aput v2, v1, v4

    aput v3, v1, v3

    sget v2, Lcn/nubia/weather/R$drawable;->weather_thunder_big_03:I

    aput v2, v1, v5

    aput-object v1, v0, v3

    .line 21
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/16 v2, 0x1ee

    aput v2, v1, v4

    aput v3, v1, v3

    sget v2, Lcn/nubia/weather/R$drawable;->weather_thunder_big_04:I

    aput v2, v1, v5

    aput-object v1, v0, v5

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->BIG_THUNDER_INFO:[[I

    .line 23
    const/4 v0, 0x4

    new-array v0, v0, [[F

    .line 24
    new-array v1, v3, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    .line 25
    new-array v1, v3, [F

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    .line 26
    new-array v1, v3, [F

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    .line 27
    new-array v1, v3, [F

    fill-array-data v1, :array_3

    aput-object v1, v0, v5

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->BIG_THUNDER_SIZE:[[F

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_RECT:[F

    .line 32
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->SMALL_THUNDER_RECT:[F

    .line 34
    new-array v0, v3, [F

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->SMALL_SMALL_THUNDER_START_SCALE:[F

    .line 36
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->BIG_THUNDER_LIFE:F

    .line 37
    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->SMALL_THUNDER_LIFE:F

    .line 38
    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_LIFE:F

    .line 40
    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 41
    sget v1, Lcn/nubia/weather/R$drawable;->weather_cloud_twinkle_01:I

    aput v1, v0, v4

    .line 42
    sget v1, Lcn/nubia/weather/R$drawable;->weather_cloud_twinkle_02:I

    aput v1, v0, v7

    .line 43
    sget v1, Lcn/nubia/weather/R$drawable;->weather_cloud_twinkle_03:I

    aput v1, v0, v3

    .line 44
    sget v1, Lcn/nubia/weather/R$drawable;->weather_cloud_twinkle_04:I

    aput v1, v0, v5

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_BITMAP_ID:[I

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [[F

    .line 48
    new-array v1, v3, [F

    fill-array-data v1, :array_7

    aput-object v1, v0, v4

    .line 49
    new-array v1, v3, [F

    fill-array-data v1, :array_8

    aput-object v1, v0, v7

    .line 50
    new-array v1, v3, [F

    fill-array-data v1, :array_9

    aput-object v1, v0, v3

    .line 51
    new-array v1, v3, [F

    fill-array-data v1, :array_a

    aput-object v1, v0, v5

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_SIZE:[[F

    .line 54
    new-array v0, v3, [I

    .line 55
    sget v1, Lcn/nubia/weather/R$drawable;->weather_cloud_twinkle_strong_01:I

    aput v1, v0, v4

    .line 56
    sget v1, Lcn/nubia/weather/R$drawable;->weather_cloud_twinkle_strong_02:I

    aput v1, v0, v7

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_STRONG_ID:[I

    .line 59
    new-array v0, v3, [[F

    .line 60
    new-array v1, v3, [F

    fill-array-data v1, :array_b

    aput-object v1, v0, v4

    .line 61
    new-array v1, v3, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_STRONG_SIZE:[[F

    .line 64
    new-array v0, v5, [I

    .line 65
    sget v1, Lcn/nubia/weather/R$drawable;->weather_thunder_small_01:I

    aput v1, v0, v4

    .line 66
    sget v1, Lcn/nubia/weather/R$drawable;->weather_thunder_small_02:I

    aput v1, v0, v7

    .line 67
    sget v1, Lcn/nubia/weather/R$drawable;->weather_thunder_small_03:I

    aput v1, v0, v3

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->THUNDER_SMALL_ID:[I

    .line 70
    new-array v0, v5, [[F

    .line 71
    new-array v1, v3, [F

    fill-array-data v1, :array_d

    aput-object v1, v0, v4

    .line 72
    new-array v1, v3, [F

    fill-array-data v1, :array_e

    aput-object v1, v0, v7

    .line 73
    new-array v1, v3, [F

    fill-array-data v1, :array_f

    aput-object v1, v0, v3

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->THUNDER_SMALL_SIZE:[[F

    .line 76
    new-array v0, v7, [[F

    .line 77
    new-array v1, v3, [F

    fill-array-data v1, :array_10

    aput-object v1, v0, v4

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->THUNDER_SMALL_SMALL_SIZE:[[F

    .line 80
    iput-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderHandler:Landroid/os/Handler;

    .line 81
    iput-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderRunnable:Ljava/lang/Runnable;

    .line 82
    iput-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderDelayHandler:Landroid/os/Handler;

    .line 83
    iput-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderDelayRunnable:Ljava/lang/Runnable;

    .line 88
    iput-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderHandler:Landroid/os/Handler;

    .line 89
    iput-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderRunnable:Ljava/lang/Runnable;

    .line 95
    iput-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleHandler:Landroid/os/Handler;

    .line 96
    iput-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleRunnable:Ljava/lang/Runnable;

    .line 105
    iput-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 108
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_RECT:[F

    aget v1, v0, v4

    mul-float/2addr v1, p4

    aput v1, v0, v4

    .line 109
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_RECT:[F

    aget v1, v0, v7

    mul-float/2addr v1, p5

    aput v1, v0, v7

    .line 110
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_RECT:[F

    aget v1, v0, v3

    mul-float/2addr v1, p4

    aput v1, v0, v3

    .line 111
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_RECT:[F

    aget v1, v0, v5

    mul-float/2addr v1, p5

    aput v1, v0, v5

    .line 113
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->SMALL_THUNDER_RECT:[F

    aget v1, v0, v4

    mul-float/2addr v1, p4

    aput v1, v0, v4

    .line 114
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->SMALL_THUNDER_RECT:[F

    aget v1, v0, v7

    mul-float/2addr v1, p5

    aput v1, v0, v7

    .line 115
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->SMALL_THUNDER_RECT:[F

    aget v1, v0, v3

    mul-float/2addr v1, p4

    aput v1, v0, v3

    .line 116
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->SMALL_THUNDER_RECT:[F

    aget v1, v0, v5

    mul-float/2addr v1, p5

    aput v1, v0, v5

    .line 118
    iput p4, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWidthScale:F

    .line 119
    iput p5, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mHeightScale:F

    .line 121
    iput-boolean v4, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mNeedAddBigThunder:Z

    .line 122
    iput-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunder:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    .line 123
    iput-boolean v4, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mNeedAddSmallThunder:Z

    .line 124
    iput-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    .line 125
    iput-boolean v4, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mNeedAddCloudTwinkle:Z

    .line 126
    iput-object v6, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkle:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    .line 128
    new-array v0, v3, [F

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderLocation:[F

    .line 129
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mRandom:Ljava/util/Random;

    .line 130
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 131
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 132
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/ThunderControl;->setValueAnimator()V

    .line 134
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderHandler:Landroid/os/Handler;

    .line 135
    new-instance v0, Lcn/nubia/WeatherAnimation/ThunderControl$1;

    invoke-direct {v0, p0}, Lcn/nubia/WeatherAnimation/ThunderControl$1;-><init>(Lcn/nubia/WeatherAnimation/ThunderControl;)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderRunnable:Ljava/lang/Runnable;

    .line 144
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderDelayHandler:Landroid/os/Handler;

    .line 145
    new-instance v0, Lcn/nubia/WeatherAnimation/ThunderControl$2;

    invoke-direct {v0, p0}, Lcn/nubia/WeatherAnimation/ThunderControl$2;-><init>(Lcn/nubia/WeatherAnimation/ThunderControl;)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderDelayRunnable:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderHandler:Landroid/os/Handler;

    .line 153
    new-instance v0, Lcn/nubia/WeatherAnimation/ThunderControl$3;

    invoke-direct {v0, p0}, Lcn/nubia/WeatherAnimation/ThunderControl$3;-><init>(Lcn/nubia/WeatherAnimation/ThunderControl;)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderRunnable:Ljava/lang/Runnable;

    .line 162
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleHandler:Landroid/os/Handler;

    .line 163
    new-instance v0, Lcn/nubia/WeatherAnimation/ThunderControl$4;

    invoke-direct {v0, p0}, Lcn/nubia/WeatherAnimation/ThunderControl$4;-><init>(Lcn/nubia/WeatherAnimation/ThunderControl;)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleRunnable:Ljava/lang/Runnable;

    .line 171
    return-void

    .line 24
    nop

    :array_0
    .array-data 4
        0x435a0000    # 218.0f
        0x44700000    # 960.0f
    .end array-data

    .line 25
    :array_1
    .array-data 4
        0x43a80000    # 336.0f
        0x44700000    # 960.0f
    .end array-data

    .line 26
    :array_2
    .array-data 4
        0x43800000    # 256.0f
        0x44700000    # 960.0f
    .end array-data

    .line 27
    :array_3
    .array-data 4
        0x430f0000    # 143.0f
        0x44700000    # 960.0f
    .end array-data

    .line 30
    :array_4
    .array-data 4
        -0x3c6a0000    # -300.0f
        -0x3d380000    # -100.0f
        0x44898000    # 1100.0f
        0x430c0000    # 140.0f
    .end array-data

    .line 32
    :array_5
    .array-data 4
        -0x3c6a0000    # -300.0f
        0x42c80000    # 100.0f
        0x44898000    # 1100.0f
        0x43a00000    # 320.0f
    .end array-data

    .line 34
    :array_6
    .array-data 4
        0x3f2d4fdf    # 0.677f
        0x3d0b4396    # 0.034f
    .end array-data

    .line 48
    :array_7
    .array-data 4
        0x43cd8000    # 411.0f
        0x43c28000    # 389.0f
    .end array-data

    .line 49
    :array_8
    .array-data 4
        0x43c48000    # 393.0f
        0x43d10000    # 418.0f
    .end array-data

    .line 50
    :array_9
    .array-data 4
        0x43580000    # 216.0f
        0x433a0000    # 186.0f
    .end array-data

    .line 51
    :array_a
    .array-data 4
        0x437e0000    # 254.0f
        0x43948000    # 297.0f
    .end array-data

    .line 60
    :array_b
    .array-data 4
        0x43d38000    # 423.0f
        0x43dd8000    # 443.0f
    .end array-data

    .line 61
    :array_c
    .array-data 4
        0x43d38000    # 423.0f
        0x43dd8000    # 443.0f
    .end array-data

    .line 71
    :array_d
    .array-data 4
        0x43f40000    # 488.0f
        0x442f8000    # 702.0f
    .end array-data

    .line 72
    :array_e
    .array-data 4
        0x43f58000    # 491.0f
        0x43eb8000    # 471.0f
    .end array-data

    .line 73
    :array_f
    .array-data 4
        0x441ac000    # 619.0f
        0x442f8000    # 702.0f
    .end array-data

    .line 77
    :array_10
    .array-data 4
        0x43c78000    # 399.0f
        0x43948000    # 297.0f
    .end array-data
.end method

.method static synthetic access$0(Lcn/nubia/WeatherAnimation/ThunderControl;)Ljava/util/Random;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$1(Lcn/nubia/WeatherAnimation/ThunderControl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$10(Lcn/nubia/WeatherAnimation/ThunderControl;)[I
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_STRONG_ID:[I

    return-object v0
.end method

.method static synthetic access$11(Lcn/nubia/WeatherAnimation/ThunderControl;)[F
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderLocation:[F

    return-object v0
.end method

.method static synthetic access$12(Lcn/nubia/WeatherAnimation/ThunderControl;)[F
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->SMALL_THUNDER_RECT:[F

    return-object v0
.end method

.method static synthetic access$13(Lcn/nubia/WeatherAnimation/ThunderControl;)F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWidthScale:F

    return v0
.end method

.method static synthetic access$14(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_STRONG_SIZE:[[F

    return-object v0
.end method

.method static synthetic access$15(Lcn/nubia/WeatherAnimation/ThunderControl;)[F
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->SMALL_SMALL_THUNDER_START_SCALE:[F

    return-object v0
.end method

.method static synthetic access$16(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->THUNDER_SMALL_SMALL_SIZE:[[F

    return-object v0
.end method

.method static synthetic access$17(Lcn/nubia/WeatherAnimation/ThunderControl;)F
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mHeightScale:F

    return v0
.end method

.method static synthetic access$18(Lcn/nubia/WeatherAnimation/ThunderControl;)[I
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->THUNDER_SMALL_ID:[I

    return-object v0
.end method

.method static synthetic access$19(Lcn/nubia/WeatherAnimation/ThunderControl;)[[F
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->THUNDER_SMALL_SIZE:[[F

    return-object v0
.end method

.method static synthetic access$2(Lcn/nubia/WeatherAnimation/ThunderControl;Z)V
    .locals 0

    .prologue
    .line 84
    iput-boolean p1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mNeedAddBigThunder:Z

    return-void
.end method

.method static synthetic access$20(Lcn/nubia/WeatherAnimation/ThunderControl;)Lcn/nubia/WeatherAnimation/Weather/Thunder;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkle:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    return-object v0
.end method

.method static synthetic access$3(Lcn/nubia/WeatherAnimation/ThunderControl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcn/nubia/WeatherAnimation/ThunderControl;Z)V
    .locals 0

    .prologue
    .line 90
    iput-boolean p1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mNeedAddSmallThunder:Z

    return-void
.end method

.method static synthetic access$5(Lcn/nubia/WeatherAnimation/ThunderControl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$6(Lcn/nubia/WeatherAnimation/ThunderControl;Z)V
    .locals 0

    .prologue
    .line 97
    iput-boolean p1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mNeedAddCloudTwinkle:Z

    return-void
.end method

.method static synthetic access$7(Lcn/nubia/WeatherAnimation/ThunderControl;)Lcn/nubia/WeatherAnimation/Weather/Thunder;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunder:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    return-object v0
.end method

.method static synthetic access$8(Lcn/nubia/WeatherAnimation/ThunderControl;)Lcn/nubia/WeatherAnimation/Weather/Weather;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    return-object v0
.end method

.method static synthetic access$9(Lcn/nubia/WeatherAnimation/ThunderControl;)[Lcn/nubia/WeatherAnimation/Weather/Thunder;
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    return-object v0
.end method

.method private addBigThunder(I)V
    .locals 9
    .param p1, "index"    # I

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 365
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/ThunderControl;->delBigThunder()V

    .line 367
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->BIG_THUNDER_INFO:[[I

    aget-object v0, v0, p1

    aget v1, v0, v8

    .line 368
    .local v1, "bitmapId":I
    new-array v5, v8, [F

    .line 369
    .local v5, "alphaLocation":[F
    const/4 v0, 0x4

    new-array v4, v0, [F

    .line 370
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->BIG_THUNDER_INFO:[[I

    aget-object v0, v0, p1

    aget v0, v0, v6

    int-to-float v0, v0

    iget v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWidthScale:F

    mul-float/2addr v0, v2

    aput v0, v4, v6

    .line 371
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->BIG_THUNDER_INFO:[[I

    aget-object v0, v0, p1

    aget v0, v0, v7

    int-to-float v0, v0

    iget v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mHeightScale:F

    mul-float/2addr v0, v2

    aput v0, v4, v7

    const/4 v0, 0x2

    .line 372
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->BIG_THUNDER_INFO:[[I

    aget-object v2, v2, p1

    aget v2, v2, v6

    int-to-float v2, v2

    iget v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWidthScale:F

    mul-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->BIG_THUNDER_SIZE:[[F

    aget-object v3, v3, p1

    aget v3, v3, v6

    add-float/2addr v2, v3

    aput v2, v4, v0

    .line 373
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->BIG_THUNDER_INFO:[[I

    aget-object v0, v0, p1

    aget v0, v0, v7

    int-to-float v0, v0

    iget v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mHeightScale:F

    mul-float/2addr v0, v2

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->BIG_THUNDER_SIZE:[[F

    aget-object v2, v2, p1

    aget v2, v2, v7

    add-float/2addr v0, v2

    aput v0, v4, v8

    .line 375
    .local v4, "drawRect":[F
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/WeatherAnimation/Weather/Weather;->addThunderEx(IFF[F[F)Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunder:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    .line 376
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunder:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    const/high16 v2, 0x447a0000    # 1000.0f

    invoke-virtual {v0, v2}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setDrawIndex(F)V

    .line 377
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 378
    return-void
.end method

.method private addCloudTwinkle()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v3, 0x0

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 413
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/ThunderControl;->delCloudTwinkle()V

    .line 415
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mRandom:Ljava/util/Random;

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_BITMAP_ID:[I

    array-length v2, v2

    invoke-virtual {v0, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    .line 416
    .local v6, "index":I
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_BITMAP_ID:[I

    aget v1, v0, v6

    .line 417
    .local v1, "bitmapId":I
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_RECT:[F

    aget v0, v0, v10

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mRandom:Ljava/util/Random;

    iget-object v9, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_RECT:[F

    aget v9, v9, v13

    float-to-int v9, v9

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v7, v0

    .line 418
    .local v7, "x":I
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_RECT:[F

    aget v0, v0, v11

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mRandom:Ljava/util/Random;

    iget-object v9, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_RECT:[F

    aget v9, v9, v12

    float-to-int v9, v9

    invoke-virtual {v2, v9}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    float-to-int v8, v0

    .line 419
    .local v8, "y":I
    const/4 v0, 0x4

    new-array v4, v0, [F

    int-to-float v0, v7

    aput v0, v4, v10

    int-to-float v0, v8

    aput v0, v4, v11

    int-to-float v0, v7

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_SIZE:[[F

    aget-object v2, v2, v6

    aget v2, v2, v10

    add-float/2addr v0, v2

    aput v0, v4, v13

    int-to-float v0, v8

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->CLOUD_TWINKLE_SIZE:[[F

    aget-object v2, v2, v6

    aget v2, v2, v11

    add-float/2addr v0, v2

    aput v0, v4, v12

    .line 420
    .local v4, "drawRect":[F
    new-array v5, v12, [F

    .line 421
    .local v5, "alphaLocation":[F
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    const v2, 0x3fb33333    # 1.4f

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/WeatherAnimation/Weather/Weather;->addThunderEx(IFF[F[F)Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkle:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    .line 422
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkle:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    invoke-virtual {v0, v3}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setDrawIndex(F)V

    .line 423
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 424
    return-void
.end method

.method private addSmallThunder()V
    .locals 1

    .prologue
    .line 389
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/ThunderControl;->delSmallThunder()V

    .line 391
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunder:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    if-eqz v0, :cond_0

    .line 397
    :goto_0
    return-void

    .line 395
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Lcn/nubia/WeatherAnimation/Weather/Thunder;

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    .line 396
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0
.end method

.method private delBigThunder()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunder:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunder:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->delDrawElement(Lcn/nubia/WeatherAnimation/Weather/DrawElement;)V

    .line 383
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunder:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    .line 384
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 386
    :cond_0
    return-void
.end method

.method private delCloudTwinkle()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkle:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkle:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->delDrawElement(Lcn/nubia/WeatherAnimation/Weather/DrawElement;)V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkle:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    .line 430
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 432
    :cond_0
    return-void
.end method

.method private delSmallThunder()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 400
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->delDrawElement(Lcn/nubia/WeatherAnimation/Weather/DrawElement;)V

    .line 402
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    aput-object v2, v0, v3

    .line 403
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->delDrawElement(Lcn/nubia/WeatherAnimation/Weather/DrawElement;)V

    .line 404
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    aput-object v2, v0, v4

    .line 405
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->delDrawElement(Lcn/nubia/WeatherAnimation/Weather/DrawElement;)V

    .line 406
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    aput-object v2, v0, v5

    .line 407
    iput-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    .line 408
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 410
    :cond_0
    return-void
.end method

.method private setValueAnimator()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x96

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 175
    const/16 v0, 0x11

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderAnimator:Landroid/animation/ValueAnimator;

    .line 178
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 179
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 180
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/WeatherAnimation/ThunderControl$5;

    invoke-direct {v1, p0}, Lcn/nubia/WeatherAnimation/ThunderControl$5;-><init>(Lcn/nubia/WeatherAnimation/ThunderControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 197
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    .line 198
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    aput-object v1, v0, v5

    .line 199
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v5

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 200
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 201
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v5

    new-instance v1, Lcn/nubia/WeatherAnimation/ThunderControl$6;

    invoke-direct {v1, p0}, Lcn/nubia/WeatherAnimation/ThunderControl$6;-><init>(Lcn/nubia/WeatherAnimation/ThunderControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 220
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v5

    new-instance v1, Lcn/nubia/WeatherAnimation/ThunderControl$7;

    invoke-direct {v1, p0}, Lcn/nubia/WeatherAnimation/ThunderControl$7;-><init>(Lcn/nubia/WeatherAnimation/ThunderControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 262
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    new-array v1, v6, [F

    fill-array-data v1, :array_2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    .line 263
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v4

    const-wide/16 v2, 0x44c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 264
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v4

    invoke-virtual {v0, v8, v9}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 265
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 266
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v4

    new-instance v1, Lcn/nubia/WeatherAnimation/ThunderControl$8;

    invoke-direct {v1, p0}, Lcn/nubia/WeatherAnimation/ThunderControl$8;-><init>(Lcn/nubia/WeatherAnimation/ThunderControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 284
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v4

    new-instance v1, Lcn/nubia/WeatherAnimation/ThunderControl$9;

    invoke-direct {v1, p0}, Lcn/nubia/WeatherAnimation/ThunderControl$9;-><init>(Lcn/nubia/WeatherAnimation/ThunderControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 303
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimatorSet:Landroid/animation/AnimatorSet;

    .line 304
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimator:[Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 307
    new-array v0, v6, [F

    fill-array-data v0, :array_3

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleAnimator:Landroid/animation/ValueAnimator;

    .line 308
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 309
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 310
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcn/nubia/WeatherAnimation/ThunderControl$10;

    invoke-direct {v1, p0}, Lcn/nubia/WeatherAnimation/ThunderControl$10;-><init>(Lcn/nubia/WeatherAnimation/ThunderControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 324
    return-void

    .line 175
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f666666    # 0.9f
        0x3f4ccccd    # 0.8f
        0x3f333333    # 0.7f
        0x3f19999a    # 0.6f
        0x3f000000    # 0.5f
        0x3ecccccd    # 0.4f
        0x3e99999a    # 0.3f
        0x3e4ccccd    # 0.2f
        0x3dcccccd    # 0.1f
        0x0
    .end array-data

    .line 198
    :array_1
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        0x0
    .end array-data

    .line 262
    :array_2
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
        0x3f19999a    # 0.6f
        0x3ecccccd    # 0.4f
        0x3e4ccccd    # 0.2f
        0x0
    .end array-data

    .line 307
    :array_3
    .array-data 4
        0x3ecccccd    # 0.4f
        0x3ecccccd    # 0.4f
        0x0
        0x0
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f400000    # 0.75f
        0x3f000000    # 0.5f
        0x3e800000    # 0.25f
        0x0
    .end array-data
.end method


# virtual methods
.method public addThunderSystem()V
    .locals 4

    .prologue
    .line 435
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 436
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 437
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 438
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 441
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 442
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 443
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderDelayHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 444
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 445
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunderRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 446
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 447
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkleRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 448
    return-void
.end method

.method public onProcessFrame(F)V
    .locals 6
    .param p1, "time"    # F

    .prologue
    const/4 v3, 0x0

    .line 327
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunder:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunder:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->getLife()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 328
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/ThunderControl;->delBigThunder()V

    .line 331
    :cond_0
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    if-eqz v1, :cond_1

    .line 332
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->getLife()F

    move-result v1

    const v2, 0x3fb33333    # 1.4f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 333
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/ThunderControl;->delSmallThunder()V

    .line 336
    :cond_1
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkle:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mCloudTwinkle:Lcn/nubia/WeatherAnimation/Weather/Thunder;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->getLife()F

    move-result v1

    const v2, 0x3eb33333    # 0.35f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 337
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/ThunderControl;->delCloudTwinkle()V

    .line 340
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mNeedAddBigThunder:Z

    if-eqz v1, :cond_3

    .line 341
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mRandom:Ljava/util/Random;

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->BIG_THUNDER_INFO:[[I

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 343
    .local v0, "index":I
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mSmallThunder:[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    if-eqz v1, :cond_6

    .line 344
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderDelayHandler:Landroid/os/Handler;

    .line 345
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mBigThunderDelayRunnable:Ljava/lang/Runnable;

    const-wide/16 v4, 0x3e8

    .line 344
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 350
    :goto_0
    iput-boolean v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mNeedAddBigThunder:Z

    .line 353
    .end local v0    # "index":I
    :cond_3
    iget-boolean v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mNeedAddSmallThunder:Z

    if-eqz v1, :cond_4

    .line 354
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/ThunderControl;->addSmallThunder()V

    .line 355
    iput-boolean v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mNeedAddSmallThunder:Z

    .line 358
    :cond_4
    iget-boolean v1, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mNeedAddCloudTwinkle:Z

    if-eqz v1, :cond_5

    .line 359
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/ThunderControl;->addCloudTwinkle()V

    .line 360
    iput-boolean v3, p0, Lcn/nubia/WeatherAnimation/ThunderControl;->mNeedAddCloudTwinkle:Z

    .line 362
    :cond_5
    return-void

    .line 347
    .restart local v0    # "index":I
    :cond_6
    invoke-direct {p0, v0}, Lcn/nubia/WeatherAnimation/ThunderControl;->addBigThunder(I)V

    goto :goto_0
.end method
