.class public Lcn/nubia/Particle/ParticleSystemHail;
.super Lcn/nubia/Particle/ParticleSystem;
.source "ParticleSystemHail.java"


# static fields
.field private static final NUM_MAX:I = 0x12c


# instance fields
.field private mRectHeight:F

.field private mRectWidth:F

.field private mScreenNum:I

.field private mScreenTime:F

.field private mXn:I

.field private mYAccelerate:F

.field private mYSpeed:F

.field private mYn:I


# direct methods
.method public constructor <init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
    .locals 2
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "widthScale"    # F
    .param p5, "heightScale"    # F

    .prologue
    .line 16
    invoke-direct/range {p0 .. p5}, Lcn/nubia/Particle/ParticleSystem;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 17
    sget-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_SIZE_HAIL:[I

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemHail;->TEXTURE_SIZE:[I

    .line 18
    sget-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_COORDINATION_HAIL:[[I

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemHail;->TEXTURE_COORDINATION:[[I

    .line 19
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemHail;->setDotPerSecond(F)V

    .line 20
    sget v0, Lcn/nubia/weather/R$drawable;->particle_hail:I

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemHail;->setBitmapId(I)V

    .line 21
    const/high16 v0, 0x44af0000    # 1400.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemHail;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemHail;->mYSpeed:F

    .line 22
    const/high16 v0, 0x43480000    # 200.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemHail;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemHail;->mYAccelerate:F

    .line 23
    return-void
.end method

.method private createFirstScreenParticles(II)V
    .locals 3
    .param p1, "rowNum"    # I
    .param p2, "colNum"    # I

    .prologue
    .line 85
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 91
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    if-lt v0, p2, :cond_1

    .line 85
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/Particle/ParticleSystemHail;->createParticle()Lcn/nubia/Particle/Particle;

    move-result-object v1

    .line 88
    .local v1, "particle":Lcn/nubia/Particle/Particle;
    invoke-direct {p0, v1, v2, v0}, Lcn/nubia/Particle/ParticleSystemHail;->setParticleLocationAndAdd(Lcn/nubia/Particle/Particle;II)V

    .line 86
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private createSecondScreenParticles(II)V
    .locals 4
    .param p1, "rowNum"    # I
    .param p2, "colNum"    # I

    .prologue
    .line 94
    const/4 v2, 0x0

    .local v2, "row":I
    :goto_0
    if-lt v2, p1, :cond_0

    .line 101
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    .local v0, "col":I
    :goto_1
    if-lt v0, p2, :cond_1

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/Particle/ParticleSystemHail;->createParticle()Lcn/nubia/Particle/Particle;

    move-result-object v1

    .line 97
    .local v1, "particle":Lcn/nubia/Particle/Particle;
    invoke-direct {p0, v1, v2, v0}, Lcn/nubia/Particle/ParticleSystemHail;->setParticleLocationAndAdd(Lcn/nubia/Particle/Particle;II)V

    .line 98
    iget v3, v1, Lcn/nubia/Particle/Particle;->mY:F

    neg-float v3, v3

    iput v3, v1, Lcn/nubia/Particle/Particle;->mY:F

    .line 95
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setParticleLocationAndAdd(Lcn/nubia/Particle/Particle;II)V
    .locals 3
    .param p1, "particle"    # Lcn/nubia/Particle/Particle;
    .param p2, "row"    # I
    .param p3, "col"    # I

    .prologue
    .line 103
    add-int v0, p2, p3

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 104
    int-to-float v0, p2

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRectWidth:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRectWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcn/nubia/Particle/Particle;->mX:F

    .line 105
    int-to-float v0, p3

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRectHeight:F

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRectHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p1, Lcn/nubia/Particle/Particle;->mY:F

    .line 106
    iget-object v0, p0, Lcn/nubia/Particle/ParticleSystemHail;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    :cond_0
    return-void
.end method


# virtual methods
.method public create()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 27
    invoke-super {p0}, Lcn/nubia/Particle/ParticleSystem;->create()V

    .line 29
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mYAccelerate:F

    div-float v0, v3, v6

    .line 30
    .local v0, "a":F
    iget v1, p0, Lcn/nubia/Particle/ParticleSystemHail;->mYSpeed:F

    .line 31
    .local v1, "b":F
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mHeight:I

    int-to-float v2, v3

    .line 32
    .local v2, "c":F
    neg-float v3, v1

    mul-float v4, v1, v1

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v5, v0

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v4, v4

    add-float/2addr v3, v4

    mul-float v4, v6, v0

    div-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mScreenTime:F

    .line 33
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mDPS:F

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mScreenTime:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mScreenNum:I

    .line 35
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mWidth:I

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mScreenNum:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mHeight:I

    div-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mXn:I

    .line 36
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mHeight:I

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mScreenNum:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mWidth:I

    div-int/2addr v3, v4

    int-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-int v3, v4

    iput v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mYn:I

    .line 37
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mWidth:I

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mXn:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRectWidth:F

    .line 38
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mHeight:I

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mYn:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    iput v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRectHeight:F

    .line 40
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mXn:I

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mYn:I

    invoke-direct {p0, v3, v4}, Lcn/nubia/Particle/ParticleSystemHail;->createFirstScreenParticles(II)V

    .line 41
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mXn:I

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mYn:I

    invoke-direct {p0, v3, v4}, Lcn/nubia/Particle/ParticleSystemHail;->createSecondScreenParticles(II)V

    .line 42
    return-void
.end method

.method protected createParticle()Lcn/nubia/Particle/Particle;
    .locals 5

    .prologue
    .line 114
    new-instance v1, Lcn/nubia/Particle/Particle;

    invoke-direct {v1}, Lcn/nubia/Particle/Particle;-><init>()V

    .line 115
    .local v1, "particle":Lcn/nubia/Particle/Particle;
    iget-object v2, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRandom:Ljava/util/Random;

    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mNumTexCoorId:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 116
    .local v0, "id":I
    iput v0, v1, Lcn/nubia/Particle/Particle;->mTexCoorId:I

    .line 117
    iget v2, p0, Lcn/nubia/Particle/ParticleSystemHail;->mYSpeed:F

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v2, v3}, Lcn/nubia/Particle/ParticleUtil;->getRandomPercentValue(FF)F

    move-result v2

    iput v2, v1, Lcn/nubia/Particle/Particle;->mVy:F

    .line 118
    iget v2, p0, Lcn/nubia/Particle/ParticleSystemHail;->mYAccelerate:F

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v2, v3}, Lcn/nubia/Particle/ParticleUtil;->getRandomPercentValue(FF)F

    move-result v2

    iput v2, v1, Lcn/nubia/Particle/Particle;->mAy:F

    .line 119
    iget-object v2, p0, Lcn/nubia/Particle/ParticleSystemHail;->TEXTURE_COORDINATION:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->TEXTURE_COORDINATION:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Lcn/nubia/Particle/Particle;->mWidth:F

    .line 120
    iget-object v2, p0, Lcn/nubia/Particle/ParticleSystemHail;->TEXTURE_COORDINATION:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->TEXTURE_COORDINATION:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Lcn/nubia/Particle/Particle;->mHeight:F

    .line 121
    iget v2, v1, Lcn/nubia/Particle/Particle;->mWidth:F

    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mHeightScale:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcn/nubia/Particle/Particle;->mWidth:F

    .line 122
    iget v2, v1, Lcn/nubia/Particle/Particle;->mHeight:F

    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mHeightScale:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcn/nubia/Particle/Particle;->mHeight:F

    .line 123
    return-object v1
.end method

.method public getParticleMax()I
    .locals 1

    .prologue
    .line 80
    const/16 v0, 0x12c

    return v0
.end method

.method public onProcessFrame(F)V
    .locals 8
    .param p1, "time"    # F

    .prologue
    const/4 v7, 0x0

    .line 49
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRemain:F

    add-float/2addr v3, p1

    iput v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRemain:F

    .line 50
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mScreenTime:F

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRemain:F

    sub-float/2addr v3, v4

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_0

    .line 51
    iput v7, p0, Lcn/nubia/Particle/ParticleSystemHail;->mRemain:F

    .line 53
    iget v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mXn:I

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mYn:I

    invoke-direct {p0, v3, v4}, Lcn/nubia/Particle/ParticleSystemHail;->createSecondScreenParticles(II)V

    .line 56
    :cond_0
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 58
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_1

    .line 66
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 68
    move v0, v1

    :goto_1
    if-gez v0, :cond_3

    .line 77
    return-void

    .line 59
    :cond_1
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/Particle/Particle;

    .line 60
    .local v2, "particle":Lcn/nubia/Particle/Particle;
    iget v3, v2, Lcn/nubia/Particle/Particle;->mY:F

    cmpl-float v3, v3, v7

    if-lez v3, :cond_2

    .line 61
    iget v3, v2, Lcn/nubia/Particle/Particle;->mVy:F

    iget v4, v2, Lcn/nubia/Particle/Particle;->mAy:F

    mul-float/2addr v4, p1

    add-float/2addr v3, v4

    iput v3, v2, Lcn/nubia/Particle/Particle;->mVy:F

    .line 63
    :cond_2
    iget v3, v2, Lcn/nubia/Particle/Particle;->mY:F

    iget v4, v2, Lcn/nubia/Particle/Particle;->mVy:F

    mul-float/2addr v4, p1

    const/high16 v5, 0x3f000000    # 0.5f

    iget v6, v2, Lcn/nubia/Particle/Particle;->mAy:F

    mul-float/2addr v5, v6

    mul-float/2addr v5, p1

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    add-float/2addr v3, v4

    iput v3, v2, Lcn/nubia/Particle/Particle;->mY:F

    .line 58
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 69
    .end local v2    # "particle":Lcn/nubia/Particle/Particle;
    :cond_3
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/Particle/Particle;

    .line 71
    .restart local v2    # "particle":Lcn/nubia/Particle/Particle;
    iget v3, v2, Lcn/nubia/Particle/Particle;->mY:F

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mHeight:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_4

    .line 72
    iget v3, v2, Lcn/nubia/Particle/Particle;->mX:F

    cmpg-float v3, v3, v7

    if-ltz v3, :cond_4

    .line 73
    iget v3, v2, Lcn/nubia/Particle/Particle;->mX:F

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemHail;->mWidth:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    .line 74
    :cond_4
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemHail;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 68
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method
