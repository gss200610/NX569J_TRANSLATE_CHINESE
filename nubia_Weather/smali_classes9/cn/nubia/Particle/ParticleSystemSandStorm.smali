.class public Lcn/nubia/Particle/ParticleSystemSandStorm;
.super Lcn/nubia/Particle/ParticleSystem;
.source "ParticleSystemSandStorm.java"


# static fields
.field private static final NUM_MAX:I = 0x28a


# instance fields
.field private mXAccelerate:F

.field private mXSpeed:F

.field private mXSpeedOffset:F

.field private mYAccelerate:F

.field private mYSpeed:F

.field private mYSpeedOffset:F


# direct methods
.method public constructor <init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
    .locals 1
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "widthScale"    # F
    .param p5, "heightScale"    # F

    .prologue
    .line 16
    invoke-direct/range {p0 .. p5}, Lcn/nubia/Particle/ParticleSystem;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 17
    sget-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_SIZE_SAND_STORM:[I

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->TEXTURE_SIZE:[I

    .line 18
    sget-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_COORDINATION_SAND_STORM:[[I

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->TEXTURE_COORDINATION:[[I

    .line 19
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSandStorm;->setLevel(I)V

    .line 20
    sget v0, Lcn/nubia/weather/R$drawable;->particle_sand_storm:I

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSandStorm;->setBitmapId(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public create()V
    .locals 11

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 25
    invoke-super {p0}, Lcn/nubia/Particle/ParticleSystem;->create()V

    .line 30
    iget v7, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mYAccelerate:F

    div-float v0, v7, v10

    .line 31
    .local v0, "a":F
    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mYSpeed:F

    .line 32
    .local v1, "b":F
    iget v7, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mHeight:I

    int-to-float v2, v7

    .line 33
    .local v2, "c":F
    neg-float v7, v1

    mul-float v8, v1, v1

    const/high16 v9, 0x40800000    # 4.0f

    mul-float/2addr v9, v0

    mul-float/2addr v9, v2

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    add-float/2addr v7, v8

    mul-float v8, v10, v0

    div-float v6, v7, v8

    .line 34
    .local v6, "time":F
    iget v7, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mDPS:F

    mul-float/2addr v7, v6

    float-to-int v4, v7

    .line 36
    .local v4, "n":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-lt v3, v4, :cond_0

    .line 41
    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/Particle/ParticleSystemSandStorm;->createParticle()Lcn/nubia/Particle/Particle;

    move-result-object v5

    .line 38
    .local v5, "particle":Lcn/nubia/Particle/Particle;
    iget-object v7, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRandom:Ljava/util/Random;

    const/16 v8, 0x3e8

    invoke-virtual {v7, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, v5, Lcn/nubia/Particle/Particle;->mLifeTime:F

    .line 39
    iget-object v7, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method protected createParticle()Lcn/nubia/Particle/Particle;
    .locals 5

    .prologue
    .line 94
    new-instance v1, Lcn/nubia/Particle/Particle;

    invoke-direct {v1}, Lcn/nubia/Particle/Particle;-><init>()V

    .line 95
    .local v1, "particle":Lcn/nubia/Particle/Particle;
    iget-object v2, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRandom:Ljava/util/Random;

    iget v3, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mNumTexCoorId:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 96
    .local v0, "id":I
    iput v0, v1, Lcn/nubia/Particle/Particle;->mTexCoorId:I

    .line 97
    iget-object v2, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRandom:Ljava/util/Random;

    iget v3, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mWidth:I

    mul-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcn/nubia/Particle/Particle;->mX:F

    .line 98
    iget-object v2, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRandom:Ljava/util/Random;

    iget v3, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mHeight:I

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcn/nubia/Particle/Particle;->mY:F

    .line 99
    iget v2, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mXSpeed:F

    iget v3, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mXSpeedOffset:F

    invoke-static {v2, v3}, Lcn/nubia/Particle/ParticleUtil;->getRandomOffsetValue(FF)F

    move-result v2

    iput v2, v1, Lcn/nubia/Particle/Particle;->mVx:F

    .line 100
    iget v2, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mYSpeed:F

    iget v3, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mYSpeedOffset:F

    invoke-static {v2, v3}, Lcn/nubia/Particle/ParticleUtil;->getRandomOffsetValue(FF)F

    move-result v2

    iput v2, v1, Lcn/nubia/Particle/Particle;->mVy:F

    .line 101
    iget-object v2, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget v3, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mXAccelerate:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcn/nubia/Particle/Particle;->mAx:F

    .line 102
    iget-object v2, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRandom:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextFloat()F

    move-result v2

    iget v3, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mYAccelerate:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcn/nubia/Particle/Particle;->mAy:F

    .line 103
    iget-object v2, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->TEXTURE_COORDINATION:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->TEXTURE_COORDINATION:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x0

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Lcn/nubia/Particle/Particle;->mWidth:F

    .line 104
    iget-object v2, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->TEXTURE_COORDINATION:[[I

    aget-object v2, v2, v0

    const/4 v3, 0x3

    aget v2, v2, v3

    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->TEXTURE_COORDINATION:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iput v2, v1, Lcn/nubia/Particle/Particle;->mHeight:F

    .line 105
    iget v2, v1, Lcn/nubia/Particle/Particle;->mWidth:F

    iget v3, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mHeightScale:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcn/nubia/Particle/Particle;->mWidth:F

    .line 106
    iget v2, v1, Lcn/nubia/Particle/Particle;->mHeight:F

    iget v3, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mHeightScale:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcn/nubia/Particle/Particle;->mHeight:F

    .line 107
    return-object v1
.end method

.method public getParticleMax()I
    .locals 1

    .prologue
    .line 86
    const/16 v0, 0x28a

    return v0
.end method

.method public onProcessFrame(F)V
    .locals 14
    .param p1, "time"    # F

    .prologue
    const/4 v13, 0x0

    const/high16 v12, 0x3f000000    # 0.5f

    .line 49
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRemain:F

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mDPS:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRemain:F

    .line 50
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRemain:F

    float-to-int v2, v4

    .line 51
    .local v2, "n":I
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRemain:F

    int-to-float v5, v2

    sub-float/2addr v4, v5

    iput v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRemain:F

    .line 52
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mYSpeed:F

    mul-float/2addr v4, p1

    iget v5, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mYAccelerate:F

    mul-float/2addr v5, v12

    mul-float/2addr v5, p1

    mul-float/2addr v5, p1

    add-float v0, v4, v5

    .line 54
    .local v0, "height":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 61
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 63
    const/4 v1, 0x0

    :goto_1
    if-lt v1, v2, :cond_1

    .line 73
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .line 75
    move v1, v2

    :goto_2
    if-gez v1, :cond_2

    .line 83
    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/Particle/ParticleSystemSandStorm;->createParticle()Lcn/nubia/Particle/Particle;

    move-result-object v3

    .line 56
    .local v3, "particle":Lcn/nubia/Particle/Particle;
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mHeight:I

    int-to-float v4, v4

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    mul-float/2addr v5, v0

    add-float/2addr v4, v5

    iput v4, v3, Lcn/nubia/Particle/Particle;->mY:F

    .line 57
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRandom:Ljava/util/Random;

    const/16 v5, 0x3e8

    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, v3, Lcn/nubia/Particle/Particle;->mLifeTime:F

    .line 58
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 54
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 64
    .end local v3    # "particle":Lcn/nubia/Particle/Particle;
    :cond_1
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/Particle/Particle;

    .line 65
    .restart local v3    # "particle":Lcn/nubia/Particle/Particle;
    iget v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mXSpeed:F

    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mRandom:Ljava/util/Random;

    invoke-virtual {v5}, Ljava/util/Random;->nextFloat()F

    move-result v5

    .line 66
    iget v6, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mXSpeedOffset:F

    mul-float/2addr v5, v6

    float-to-double v6, v5

    const-wide v8, 0x3fe3333333333333L    # 0.6

    iget v5, v3, Lcn/nubia/Particle/Particle;->mLifeTime:F

    float-to-double v10, v5

    mul-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    double-to-float v5, v6

    add-float/2addr v4, v5

    .line 65
    iput v4, v3, Lcn/nubia/Particle/Particle;->mVx:F

    .line 67
    iget v4, v3, Lcn/nubia/Particle/Particle;->mVy:F

    iget v5, v3, Lcn/nubia/Particle/Particle;->mAy:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    iput v4, v3, Lcn/nubia/Particle/Particle;->mVy:F

    .line 68
    iget v4, v3, Lcn/nubia/Particle/Particle;->mX:F

    iget v5, v3, Lcn/nubia/Particle/Particle;->mVx:F

    mul-float/2addr v5, p1

    iget v6, v3, Lcn/nubia/Particle/Particle;->mAx:F

    mul-float/2addr v6, v12

    mul-float/2addr v6, p1

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Lcn/nubia/Particle/Particle;->mX:F

    .line 69
    iget v4, v3, Lcn/nubia/Particle/Particle;->mY:F

    iget v5, v3, Lcn/nubia/Particle/Particle;->mVy:F

    mul-float/2addr v5, p1

    iget v6, v3, Lcn/nubia/Particle/Particle;->mAy:F

    mul-float/2addr v6, v12

    mul-float/2addr v6, p1

    mul-float/2addr v6, p1

    add-float/2addr v5, v6

    sub-float/2addr v4, v5

    iput v4, v3, Lcn/nubia/Particle/Particle;->mY:F

    .line 70
    iget v4, v3, Lcn/nubia/Particle/Particle;->mLifeTime:F

    add-float/2addr v4, p1

    iput v4, v3, Lcn/nubia/Particle/Particle;->mLifeTime:F

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 76
    .end local v3    # "particle":Lcn/nubia/Particle/Particle;
    :cond_2
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/Particle/Particle;

    .line 78
    .restart local v3    # "particle":Lcn/nubia/Particle/Particle;
    iget v4, v3, Lcn/nubia/Particle/Particle;->mY:F

    cmpg-float v4, v4, v13

    if-ltz v4, :cond_3

    .line 79
    iget v4, v3, Lcn/nubia/Particle/Particle;->mX:F

    cmpg-float v4, v4, v13

    if-gez v4, :cond_4

    .line 80
    :cond_3
    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 75
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_2
.end method

.method public setLevel(I)V
    .locals 3
    .param p1, "level"    # I

    .prologue
    const/high16 v2, 0x43480000    # 200.0f

    .line 111
    invoke-super {p0, p1}, Lcn/nubia/Particle/ParticleSystem;->setLevel(I)V

    .line 112
    const/high16 v0, 0x44160000    # 600.0f

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemSandStorm;->setDotPerSecond(F)V

    .line 113
    const/high16 v0, 0x44480000    # 800.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mWidthScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mXSpeed:F

    .line 114
    const/high16 v0, 0x442f0000    # 700.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mYSpeed:F

    .line 115
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mWidthScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mXSpeedOffset:F

    .line 116
    iget v0, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mHeightScale:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mYSpeedOffset:F

    .line 117
    const/high16 v0, 0x43960000    # 300.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mWidthScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mXAccelerate:F

    .line 118
    const/high16 v0, 0x43c80000    # 400.0f

    iget v1, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mHeightScale:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/Particle/ParticleSystemSandStorm;->mYAccelerate:F

    .line 119
    return-void
.end method
