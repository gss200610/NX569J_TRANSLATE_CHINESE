.class public Lcn/nubia/Particle/ParticleSystemShine;
.super Lcn/nubia/Particle/ParticleSystem;
.source "ParticleSystemShine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;,
        Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;,
        Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationUpdateListener;
    }
.end annotation


# static fields
.field private static final NUM_MAX:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "ParticleSystemShine"


# instance fields
.field private mAngle:F

.field private mAnimationListener:Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;

.field private mAnimationUpdateListener:Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationUpdateListener;

.field private mChangeNode:[F

.field private final mScanAngle:[[F

.field private mScanAnimator:Landroid/animation/ValueAnimator;

.field private mSizeMax:F

.field private mSizeMid:F

.field private mSizeMin:F

.field private mSizePercent:F

.field private mSpeed:F

.field private mSpeedPercent:F


# direct methods
.method public constructor <init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
    .locals 4
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "widthScale"    # F
    .param p5, "heightScale"    # F

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x2

    .line 30
    invoke-direct/range {p0 .. p5}, Lcn/nubia/Particle/ParticleSystem;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 14
    new-array v0, v2, [[F

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    aput-object v1, v0, v3

    const/4 v1, 0x1

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->mScanAngle:[[F

    .line 31
    sget-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_SIZE_SHINE:[I

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->TEXTURE_SIZE:[I

    .line 32
    sget-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_COORDINATION_SHINE:[[I

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->TEXTURE_COORDINATION:[[I

    .line 33
    invoke-virtual {p0, v3}, Lcn/nubia/Particle/ParticleSystemShine;->setLevel(I)V

    .line 34
    sget v0, Lcn/nubia/weather/R$drawable;->particle_shine:I

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemShine;->setBitmapId(I)V

    .line 35
    return-void

    .line 14
    nop

    :array_0
    .array-data 4
        0x42540000    # 53.0f
        0x425a0000    # 54.5f
    .end array-data

    :array_1
    .array-data 4
        0x425e0000    # 55.5f
        0x42640000    # 57.0f
    .end array-data
.end method

.method static synthetic access$0(Lcn/nubia/Particle/ParticleSystemShine;)[[F
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->mScanAngle:[[F

    return-object v0
.end method

.method static synthetic access$1(Lcn/nubia/Particle/ParticleSystemShine;F)V
    .locals 0

    .prologue
    .line 16
    iput p1, p0, Lcn/nubia/Particle/ParticleSystemShine;->mAngle:F

    return-void
.end method


# virtual methods
.method public create()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x2

    .line 39
    invoke-super {p0}, Lcn/nubia/Particle/ParticleSystem;->create()V

    .line 41
    const/4 v5, 0x3

    new-array v5, v5, [F

    iput-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mChangeNode:[F

    .line 42
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mChangeNode:[F

    const/4 v6, 0x0

    iget v7, p0, Lcn/nubia/Particle/ParticleSystemShine;->mWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x3f400000    # 0.75f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    .line 43
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mChangeNode:[F

    const/4 v6, 0x1

    iget v7, p0, Lcn/nubia/Particle/ParticleSystemShine;->mWidth:I

    int-to-float v7, v7

    const v8, 0x3f8ccccd    # 1.1f

    mul-float/2addr v7, v8

    aput v7, v5, v6

    .line 44
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mChangeNode:[F

    iget v6, p0, Lcn/nubia/Particle/ParticleSystemShine;->mWidth:I

    int-to-float v6, v6

    const v7, 0x3fb33333    # 1.4f

    mul-float/2addr v6, v7

    aput v6, v5, v9

    .line 46
    new-instance v5, Landroid/animation/ValueAnimator;

    invoke-direct {v5}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mScanAnimator:Landroid/animation/ValueAnimator;

    .line 47
    new-instance v5, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;

    invoke-direct {v5, p0, v10}, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;-><init>(Lcn/nubia/Particle/ParticleSystemShine;Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;)V

    iput-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mAnimationListener:Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;

    .line 48
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mScanAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcn/nubia/Particle/ParticleSystemShine;->mAnimationListener:Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationListener;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 49
    new-instance v5, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationUpdateListener;

    invoke-direct {v5, p0, v10}, Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationUpdateListener;-><init>(Lcn/nubia/Particle/ParticleSystemShine;Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationUpdateListener;)V

    iput-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mAnimationUpdateListener:Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationUpdateListener;

    .line 50
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mScanAnimator:Landroid/animation/ValueAnimator;

    iget-object v6, p0, Lcn/nubia/Particle/ParticleSystemShine;->mAnimationUpdateListener:Lcn/nubia/Particle/ParticleSystemShine$ScanAnimationUpdateListener;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 51
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mScanAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0xfa0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 52
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mScanAnimator:Landroid/animation/ValueAnimator;

    new-array v6, v9, [F

    fill-array-data v6, :array_0

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 53
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mScanAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 54
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mScanAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 60
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mChangeNode:[F

    aget v5, v5, v9

    iget v6, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSpeed:F

    div-float v3, v5, v6

    .line 61
    .local v3, "time":F
    const/4 v4, 0x0

    .line 62
    .local v4, "timeEx":F
    iget v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mRemain:F

    iget v6, p0, Lcn/nubia/Particle/ParticleSystemShine;->mDPS:F

    mul-float/2addr v6, v3

    add-float/2addr v5, v6

    iput v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mRemain:F

    .line 63
    iget v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mRemain:F

    float-to-int v1, v5

    .line 64
    .local v1, "n":I
    iget v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mRemain:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    iput v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mRemain:F

    .line 66
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 80
    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/Particle/ParticleSystemShine;->createParticle()Lcn/nubia/Particle/Particle;

    move-result-object v2

    check-cast v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;

    .line 68
    .local v2, "particle":Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;
    iget v5, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSpeed:F

    mul-float/2addr v5, v4

    iput v5, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mLength:F

    .line 69
    iget v5, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    iget v6, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mScaleRatio:F

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    iput v5, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    .line 70
    int-to-float v5, v1

    div-float v5, v3, v5

    add-float/2addr v4, v5

    .line 72
    iget v5, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    iget v6, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSizeEnd:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 73
    iget v5, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSizeEnd:F

    iput v5, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    .line 76
    :cond_1
    iget v5, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    iput v5, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mWidth:F

    .line 77
    iget v5, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    iput v5, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mHeight:F

    .line 78
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected createParticle()Lcn/nubia/Particle/Particle;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 155
    new-instance v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v4}, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;-><init>(Lcn/nubia/Particle/ParticleSystemShine;Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;)V

    .line 156
    .local v1, "particle":Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;
    const/4 v2, 0x0

    .line 157
    .local v2, "startId":I
    const/16 v0, 0x8

    .line 158
    .local v0, "endId":I
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mRandom:Ljava/util/Random;

    const/16 v5, 0x9

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdMin:I

    .line 159
    const/16 v2, 0x8

    .line 160
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mNumTexCoorId:I

    add-int/lit8 v0, v4, -0x1

    .line 161
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mRandom:Ljava/util/Random;

    sub-int v5, v0, v2

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    add-int/2addr v4, v2

    iput v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdMax:I

    .line 162
    iget v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdMin:I

    iput v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorId:I

    .line 163
    iget v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorId:I

    int-to-float v4, v4

    iput v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdEx:F

    .line 164
    iput v6, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mX:F

    .line 165
    iput v6, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mY:F

    .line 166
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSpeed:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSpeedPercent:F

    invoke-static {v4, v5}, Lcn/nubia/Particle/ParticleUtil;->getRandomPercentValue(FF)F

    move-result v4

    iput v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSpeed:F

    .line 167
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mChangeNode:[F

    aget v4, v4, v7

    iget v5, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSpeed:F

    div-float v3, v4, v5

    .line 168
    .local v3, "time":F
    iget v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdMax:I

    iget v5, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdMin:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v4, v3

    iput v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mAlphaRatio1:F

    .line 169
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mChangeNode:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mChangeNode:[F

    aget v5, v5, v7

    sub-float/2addr v4, v5

    iget v5, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSpeed:F

    div-float v3, v4, v5

    .line 170
    iget v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdMax:I

    rsub-int/lit8 v4, v4, 0x0

    int-to-float v4, v4

    div-float/2addr v4, v3

    iput v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mAlphaRatio2:F

    .line 171
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSizeMin:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSizePercent:F

    invoke-static {v4, v5}, Lcn/nubia/Particle/ParticleUtil;->getRandomPercentValue(FF)F

    move-result v4

    iput v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    .line 172
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSizeMid:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSizeMax:F

    invoke-static {v4, v5}, Lcn/nubia/Particle/ParticleUtil;->getRandomValue(FF)F

    move-result v4

    iput v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSizeEnd:F

    .line 173
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mChangeNode:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    iget v5, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSpeed:F

    div-float v3, v4, v5

    .line 174
    iget v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSizeEnd:F

    iget v5, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v3

    iput v4, v1, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mScaleRatio:F

    .line 175
    return-object v1
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcn/nubia/Particle/ParticleSystem;->destroy()V

    .line 85
    iget-object v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->mScanAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 86
    return-void
.end method

.method public getParticleMax()I
    .locals 1

    .prologue
    .line 146
    const/16 v0, 0x1e

    return v0
.end method

.method public onProcessFrame(F)V
    .locals 7
    .param p1, "time"    # F

    .prologue
    const/4 v6, 0x0

    .line 93
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemShine;->mRemain:F

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mDPS:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/Particle/ParticleSystemShine;->mRemain:F

    .line 94
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemShine;->mRemain:F

    float-to-int v1, v3

    .line 95
    .local v1, "n":I
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemShine;->mRemain:F

    int-to-float v4, v1

    sub-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/Particle/ParticleSystemShine;->mRemain:F

    .line 97
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 102
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemShine;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 104
    move v0, v1

    :goto_1
    if-gez v0, :cond_1

    .line 143
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/Particle/ParticleSystemShine;->createParticle()Lcn/nubia/Particle/Particle;

    move-result-object v2

    check-cast v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;

    .line 99
    .local v2, "particle":Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemShine;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v2    # "particle":Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;
    :cond_1
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemShine;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;

    .line 106
    .restart local v2    # "particle":Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mLength:F

    iget v4, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSpeed:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mLength:F

    .line 108
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mLength:F

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mChangeNode:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 109
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemShine;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 104
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 113
    :cond_3
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mLength:F

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mX:F

    .line 114
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mLength:F

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mAngle:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    mul-float/2addr v3, v4

    iput v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mY:F

    .line 116
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mLength:F

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mChangeNode:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 117
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdEx:F

    iget v4, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mAlphaRatio1:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdEx:F

    .line 118
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdEx:F

    float-to-int v3, v3

    iput v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorId:I

    .line 120
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorId:I

    iget v4, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdMax:I

    if-le v3, v4, :cond_4

    .line 121
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdMax:I

    iput v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorId:I

    .line 132
    :cond_4
    :goto_3
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mLength:F

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemShine;->mChangeNode:[F

    aget v4, v4, v6

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 133
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    iget v4, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mScaleRatio:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    .line 135
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    iget v4, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSizeEnd:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 136
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSizeEnd:F

    iput v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    .line 139
    :cond_5
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    iput v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mWidth:F

    .line 140
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mSize:F

    iput v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mHeight:F

    goto :goto_2

    .line 124
    :cond_6
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdEx:F

    iget v4, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mAlphaRatio2:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdEx:F

    .line 125
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorIdEx:F

    float-to-int v3, v3

    iput v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorId:I

    .line 127
    iget v3, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorId:I

    if-gez v3, :cond_4

    .line 128
    iput v6, v2, Lcn/nubia/Particle/ParticleSystemShine$ParticleShine;->mTexCoorId:I

    goto :goto_3
.end method

.method public setLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/4 v2, 0x1

    .line 179
    invoke-super {p0, p1}, Lcn/nubia/Particle/ParticleSystem;->setLevel(I)V

    .line 181
    const v0, 0x3d75c28f    # 0.06f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemShine;->setDotPerSecond(F)V

    .line 182
    const/high16 v0, 0x41700000    # 15.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemShine;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSpeed:F

    .line 183
    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSpeedPercent:F

    .line 184
    iget-object v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->TEXTURE_SIZE:[I

    aget v0, v0, v2

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSizeMin:F

    .line 185
    iget-object v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->TEXTURE_SIZE:[I

    aget v0, v0, v2

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSizeMid:F

    .line 186
    iget-object v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->TEXTURE_SIZE:[I

    aget v0, v0, v2

    int-to-float v0, v0

    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSizeMax:F

    .line 187
    const v0, 0x3f333333    # 0.7f

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemShine;->mSizePercent:F

    .line 188
    return-void
.end method
