.class public Lcn/nubia/WeatherAnimation/MeteoriteControl;
.super Ljava/lang/Object;
.source "MeteoriteControl.java"


# instance fields
.field private CLOUD_METEORITE_RECT:[F

.field private alphaScale:F

.field private mAnimatorSet:Landroid/animation/AnimatorSet;

.field private mBitmapId:I

.field private mHandler:Landroid/os/Handler;

.field private mHeightScale:F

.field private mInterpolator:Landroid/animation/TimeInterpolator;

.field private mMeteorite:Lcn/nubia/WeatherAnimation/Weather/Meteorite;

.field private mMeteoriteAnimator:[Landroid/animation/ValueAnimator;

.field private mNeedAddMeteorite:Z

.field private mRandom:Ljava/util/Random;

.field private mRunnable:Ljava/lang/Runnable;

.field private mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

.field private sizeScale:F


# direct methods
.method public constructor <init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
    .locals 5
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "widthScale"    # F
    .param p5, "heightScale"    # F

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->CLOUD_METEORITE_RECT:[F

    .line 22
    iput-object v3, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mHandler:Landroid/os/Handler;

    .line 23
    iput-object v3, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mRunnable:Ljava/lang/Runnable;

    .line 28
    iput-object v3, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 34
    iput p5, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mHeightScale:F

    .line 36
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->CLOUD_METEORITE_RECT:[F

    aget v1, v0, v4

    mul-float/2addr v1, p4

    aput v1, v0, v4

    .line 37
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->CLOUD_METEORITE_RECT:[F

    const/4 v1, 0x1

    aget v2, v0, v1

    mul-float/2addr v2, p5

    aput v2, v0, v1

    .line 38
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->CLOUD_METEORITE_RECT:[F

    const/4 v1, 0x2

    aget v2, v0, v1

    mul-float/2addr v2, p4

    aput v2, v0, v1

    .line 39
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->CLOUD_METEORITE_RECT:[F

    const/4 v1, 0x3

    aget v2, v0, v1

    mul-float/2addr v2, p5

    aput v2, v0, v1

    .line 41
    sget v0, Lcn/nubia/weather/R$drawable;->weather_meteorite:I

    iput v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mBitmapId:I

    .line 42
    iput-boolean v4, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mNeedAddMeteorite:Z

    .line 43
    iput-object v3, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteorite:Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    .line 44
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mRandom:Ljava/util/Random;

    .line 45
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 46
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mInterpolator:Landroid/animation/TimeInterpolator;

    .line 48
    const/high16 v0, 0x40800000    # 4.0f

    iput v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->sizeScale:F

    .line 49
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->alphaScale:F

    .line 50
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mHandler:Landroid/os/Handler;

    .line 51
    new-instance v0, Lcn/nubia/WeatherAnimation/MeteoriteControl$1;

    invoke-direct {v0, p0}, Lcn/nubia/WeatherAnimation/MeteoriteControl$1;-><init>(Lcn/nubia/WeatherAnimation/MeteoriteControl;)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mRunnable:Ljava/lang/Runnable;

    .line 60
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->setValueAnimator()V

    .line 61
    return-void

    .line 17
    nop

    :array_0
    .array-data 4
        0x43c80000    # 400.0f
        0x0
        0x44020000    # 520.0f
        0x43520000    # 210.0f
    .end array-data
.end method

.method static synthetic access$0(Lcn/nubia/WeatherAnimation/MeteoriteControl;)Ljava/util/Random;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mRandom:Ljava/util/Random;

    return-object v0
.end method

.method static synthetic access$1(Lcn/nubia/WeatherAnimation/MeteoriteControl;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2(Lcn/nubia/WeatherAnimation/MeteoriteControl;Z)V
    .locals 0

    .prologue
    .line 20
    iput-boolean p1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mNeedAddMeteorite:Z

    return-void
.end method

.method static synthetic access$3(Lcn/nubia/WeatherAnimation/MeteoriteControl;)F
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->sizeScale:F

    return v0
.end method

.method static synthetic access$4(Lcn/nubia/WeatherAnimation/MeteoriteControl;)F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->alphaScale:F

    return v0
.end method

.method static synthetic access$5(Lcn/nubia/WeatherAnimation/MeteoriteControl;)Lcn/nubia/WeatherAnimation/Weather/Meteorite;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteorite:Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    return-object v0
.end method

.method static synthetic access$6(Lcn/nubia/WeatherAnimation/MeteoriteControl;)F
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mHeightScale:F

    return v0
.end method

.method private addMeteorite()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 119
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->delMeteorite()V

    .line 121
    new-array v2, v8, [F

    .line 122
    .local v2, "center":[F
    const/4 v3, 0x0

    .line 123
    .local v3, "scale":F
    const/4 v5, 0x0

    .line 125
    .local v5, "alpha":F
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->CLOUD_METEORITE_RECT:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mRandom:Ljava/util/Random;

    iget-object v4, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->CLOUD_METEORITE_RECT:[F

    aget v4, v4, v8

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    aput v0, v2, v6

    .line 126
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->CLOUD_METEORITE_RECT:[F

    aget v0, v0, v7

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mRandom:Ljava/util/Random;

    iget-object v4, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->CLOUD_METEORITE_RECT:[F

    const/4 v6, 0x3

    aget v4, v4, v6

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    aput v0, v2, v7

    .line 128
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    iget v1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mBitmapId:I

    const/high16 v4, 0x44160000    # 600.0f

    invoke-virtual/range {v0 .. v5}, Lcn/nubia/WeatherAnimation/Weather/Weather;->addMeteoriteEx(I[FFFF)Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteorite:Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    .line 129
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteorite:Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    const/high16 v1, 0x42480000    # 50.0f

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->setDrawIndex(F)V

    .line 130
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteorite:Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    const/high16 v1, 0x43c80000    # 400.0f

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->setAcceleration(F)V

    .line 131
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 132
    return-void
.end method

.method private delMeteorite()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteorite:Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteorite:Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->delDrawElement(Lcn/nubia/WeatherAnimation/Weather/DrawElement;)V

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteorite:Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    .line 138
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 140
    :cond_0
    return-void
.end method

.method private setValueAnimator()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x12c

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 64
    new-array v0, v3, [Landroid/animation/ValueAnimator;

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteoriteAnimator:[Landroid/animation/ValueAnimator;

    .line 65
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteoriteAnimator:[Landroid/animation/ValueAnimator;

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    aput-object v1, v0, v2

    .line 66
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteoriteAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v2

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 67
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteoriteAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v2

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 68
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteoriteAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v2

    new-instance v1, Lcn/nubia/WeatherAnimation/MeteoriteControl$2;

    invoke-direct {v1, p0}, Lcn/nubia/WeatherAnimation/MeteoriteControl$2;-><init>(Lcn/nubia/WeatherAnimation/MeteoriteControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 83
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteoriteAnimator:[Landroid/animation/ValueAnimator;

    new-array v1, v3, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    aput-object v1, v0, v4

    .line 84
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteoriteAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v4

    const-wide/16 v2, 0x258

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 85
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteoriteAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v4

    invoke-virtual {v0, v6, v7}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 86
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteoriteAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v4

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 87
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteoriteAnimator:[Landroid/animation/ValueAnimator;

    aget-object v0, v0, v4

    new-instance v1, Lcn/nubia/WeatherAnimation/MeteoriteControl$3;

    invoke-direct {v1, p0}, Lcn/nubia/WeatherAnimation/MeteoriteControl$3;-><init>(Lcn/nubia/WeatherAnimation/MeteoriteControl;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 103
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mAnimatorSet:Landroid/animation/AnimatorSet;

    .line 104
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mAnimatorSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteoriteAnimator:[Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 105
    return-void

    .line 65
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 83
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public addMeteoriteSystem()V
    .locals 4

    .prologue
    .line 143
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    .line 148
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    return-void
.end method

.method public onProcessFrame(F)V
    .locals 2
    .param p1, "time"    # F

    .prologue
    .line 108
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteorite:Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mMeteorite:Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->getLife()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->delMeteorite()V

    .line 112
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mNeedAddMeteorite:Z

    if-eqz v0, :cond_1

    .line 113
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/MeteoriteControl;->addMeteorite()V

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/WeatherAnimation/MeteoriteControl;->mNeedAddMeteorite:Z

    .line 116
    :cond_1
    return-void
.end method
