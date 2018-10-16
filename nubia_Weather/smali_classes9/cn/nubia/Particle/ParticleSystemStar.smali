.class public Lcn/nubia/Particle/ParticleSystemStar;
.super Lcn/nubia/Particle/ParticleSystem;
.source "ParticleSystemStar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;
    }
.end annotation


# static fields
.field private static final CHANGE_TIME:F = 1000.0f

.field private static final NUM_MAX:I = 0x64


# direct methods
.method public constructor <init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
    .locals 1
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "widthScale"    # F
    .param p5, "heightScale"    # F

    .prologue
    .line 11
    invoke-direct/range {p0 .. p5}, Lcn/nubia/Particle/ParticleSystem;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 12
    sget-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_SIZE_STAR:[I

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemStar;->TEXTURE_SIZE:[I

    .line 13
    sget-object v0, Lcn/nubia/Particle/ParticleUtil;->TEXTURE_COORDINATION_STAR:[[I

    iput-object v0, p0, Lcn/nubia/Particle/ParticleSystemStar;->TEXTURE_COORDINATION:[[I

    .line 14
    sget v0, Lcn/nubia/weather/R$drawable;->particle_star:I

    invoke-virtual {p0, v0}, Lcn/nubia/Particle/ParticleSystemStar;->setBitmapId(I)V

    .line 15
    return-void
.end method


# virtual methods
.method public create()V
    .locals 8

    .prologue
    .line 19
    invoke-super {p0}, Lcn/nubia/Particle/ParticleSystem;->create()V

    .line 26
    const/16 v2, 0x50

    .line 28
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 39
    return-void

    .line 29
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/Particle/ParticleSystemStar;->createParticle()Lcn/nubia/Particle/Particle;

    move-result-object v3

    check-cast v3, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;

    .line 30
    .local v3, "particle":Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemStar;->mRandom:Ljava/util/Random;

    const/16 v6, 0x7d0

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    add-int/lit16 v5, v5, 0xbb8

    int-to-float v4, v5

    .line 31
    .local v4, "time":F
    iput v4, v3, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mBrightTime:F

    .line 33
    const/high16 v5, 0x3f000000    # 0.5f

    iget-object v6, p0, Lcn/nubia/Particle/ParticleSystemStar;->mRandom:Ljava/util/Random;

    const/16 v7, 0x28

    invoke-virtual {v6, v7}, Ljava/util/Random;->nextInt(I)I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3c23d70a    # 0.01f

    mul-float/2addr v6, v7

    add-float v1, v5, v6

    .line 34
    .local v1, "maxBrightness":F
    iput v1, v3, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mMaxBrightness:F

    .line 36
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemStar;->mRandom:Ljava/util/Random;

    const/high16 v6, 0x447a0000    # 1000.0f

    add-float/2addr v6, v4

    const/high16 v7, 0x40000000    # 2.0f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, v3, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mLifeTime:F

    .line 37
    iget-object v5, p0, Lcn/nubia/Particle/ParticleSystemStar;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 28
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected createParticle()Lcn/nubia/Particle/Particle;
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 87
    new-instance v1, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;-><init>(Lcn/nubia/Particle/ParticleSystemStar;Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;)V

    .line 88
    .local v1, "particle":Lcn/nubia/Particle/Particle;
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemStar;->mRandom:Ljava/util/Random;

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemStar;->mNumTexCoorId:I

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 89
    .local v0, "id":I
    iput v0, v1, Lcn/nubia/Particle/Particle;->mTexCoorId:I

    .line 90
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemStar;->mRandom:Ljava/util/Random;

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemStar;->mWidth:I

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lcn/nubia/Particle/Particle;->mX:F

    .line 91
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemStar;->mRandom:Ljava/util/Random;

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemStar;->mHeight:I

    int-to-double v4, v4

    const-wide v6, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v4, v6

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lcn/nubia/Particle/Particle;->mY:F

    .line 92
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemStar;->mRandom:Ljava/util/Random;

    invoke-virtual {v3, v8}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    add-float/2addr v3, v4

    const/high16 v4, 0x40a00000    # 5.0f

    div-float v2, v3, v4

    .line 93
    .local v2, "scale":F
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemStar;->TEXTURE_COORDINATION:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x2

    aget v3, v3, v4

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemStar;->TEXTURE_COORDINATION:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x0

    aget v4, v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iput v3, v1, Lcn/nubia/Particle/Particle;->mWidth:F

    .line 94
    iget-object v3, p0, Lcn/nubia/Particle/ParticleSystemStar;->TEXTURE_COORDINATION:[[I

    aget-object v3, v3, v0

    aget v3, v3, v8

    iget-object v4, p0, Lcn/nubia/Particle/ParticleSystemStar;->TEXTURE_COORDINATION:[[I

    aget-object v4, v4, v0

    const/4 v5, 0x1

    aget v4, v4, v5

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v2

    iput v3, v1, Lcn/nubia/Particle/Particle;->mHeight:F

    .line 95
    iget v3, v1, Lcn/nubia/Particle/Particle;->mWidth:F

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemStar;->mHeightScale:F

    mul-float/2addr v3, v4

    iput v3, v1, Lcn/nubia/Particle/Particle;->mWidth:F

    .line 96
    iget v3, v1, Lcn/nubia/Particle/Particle;->mHeight:F

    iget v4, p0, Lcn/nubia/Particle/ParticleSystemStar;->mHeightScale:F

    mul-float/2addr v3, v4

    iput v3, v1, Lcn/nubia/Particle/Particle;->mHeight:F

    .line 97
    return-object v1
.end method

.method public getParticleMax()I
    .locals 1

    .prologue
    .line 78
    const/16 v0, 0x64

    return v0
.end method

.method public onProcessFrame(F)V
    .locals 11
    .param p1, "time"    # F

    .prologue
    const/4 v10, 0x0

    const/high16 v9, 0x40000000    # 2.0f

    const/high16 v8, 0x447a0000    # 1000.0f

    .line 50
    iget v6, p0, Lcn/nubia/Particle/ParticleSystemStar;->mRemain:F

    iget v7, p0, Lcn/nubia/Particle/ParticleSystemStar;->mDPS:F

    mul-float/2addr v7, p1

    add-float/2addr v6, v7

    iput v6, p0, Lcn/nubia/Particle/ParticleSystemStar;->mRemain:F

    .line 51
    iget v6, p0, Lcn/nubia/Particle/ParticleSystemStar;->mRemain:F

    float-to-int v4, v6

    .line 52
    .local v4, "n":I
    iget v6, p0, Lcn/nubia/Particle/ParticleSystemStar;->mRemain:F

    int-to-float v7, v4

    sub-float/2addr v6, v7

    iput v6, p0, Lcn/nubia/Particle/ParticleSystemStar;->mRemain:F

    .line 54
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v6, p0, Lcn/nubia/Particle/ParticleSystemStar;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_0

    .line 75
    return-void

    .line 55
    :cond_0
    iget-object v6, p0, Lcn/nubia/Particle/ParticleSystemStar;->mParticleList:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;

    .line 56
    .local v5, "particle":Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;
    iget v6, v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mLifeTime:F

    mul-float v7, p1, v8

    add-float/2addr v6, v7

    iput v6, v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mLifeTime:F

    .line 57
    iget v0, v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mBrightTime:F

    .line 58
    .local v0, "brightTime":F
    iget v2, v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mLifeTime:F

    .line 59
    .local v2, "lifeTime":F
    iget v3, v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mMaxBrightness:F

    .line 61
    .local v3, "maxBrightness":F
    cmpg-float v6, v2, v0

    if-gez v6, :cond_2

    .line 62
    iput v10, v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mTexCoorId:I

    .line 54
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    :cond_2
    add-float v6, v8, v0

    cmpg-float v6, v2, v6

    if-gez v6, :cond_3

    .line 64
    iget v6, p0, Lcn/nubia/Particle/ParticleSystemStar;->mNumTexCoorId:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v3

    sub-float v7, v2, v0

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mTexCoorId:I

    goto :goto_1

    .line 66
    :cond_3
    mul-float v6, v0, v9

    add-float/2addr v6, v8

    cmpg-float v6, v2, v6

    if-gez v6, :cond_4

    .line 67
    iget v6, p0, Lcn/nubia/Particle/ParticleSystemStar;->mNumTexCoorId:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v3

    float-to-int v6, v6

    iput v6, v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mTexCoorId:I

    goto :goto_1

    .line 68
    :cond_4
    add-float v6, v8, v0

    mul-float/2addr v6, v9

    cmpg-float v6, v2, v6

    if-gez v6, :cond_5

    .line 69
    iget v6, p0, Lcn/nubia/Particle/ParticleSystemStar;->mNumTexCoorId:I

    add-int/lit8 v6, v6, -0x1

    int-to-float v6, v6

    mul-float/2addr v6, v3

    add-float v7, v8, v0

    mul-float/2addr v7, v9

    sub-float/2addr v7, v2

    mul-float/2addr v6, v7

    div-float/2addr v6, v8

    float-to-int v6, v6

    iput v6, v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mTexCoorId:I

    goto :goto_1

    .line 70
    :cond_5
    add-float v6, v8, v0

    mul-float/2addr v6, v9

    cmpl-float v6, v2, v6

    if-ltz v6, :cond_1

    .line 71
    iget v6, v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mLifeTime:F

    add-float v7, v8, v0

    mul-float/2addr v7, v9

    sub-float/2addr v6, v7

    iput v6, v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mLifeTime:F

    .line 72
    iput v10, v5, Lcn/nubia/Particle/ParticleSystemStar$ParticleStar;->mTexCoorId:I

    goto :goto_1
.end method
