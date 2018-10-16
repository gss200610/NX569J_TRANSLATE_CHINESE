.class public abstract Lcn/nubia/WeatherAnimation/Weather/Weather;
.super Lcn/nubia/WeatherAnimation/Weather/IDrawElement;
.source "Weather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/WeatherAnimation/Weather/Weather$SortDrawIndex;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Weather"


# instance fields
.field private mCurrDrawIndex:I

.field private mDrawElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/WeatherAnimation/Weather/DrawElement;",
            ">;"
        }
    .end annotation
.end field

.field private mOffset:F

.field protected mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

.field protected mRandom:Ljava/util/Random;

.field private mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

.field private mWeatherType:Lcn/nubia/WeatherAnimation/WeatherType;


# direct methods
.method public constructor <init>(IIFF)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/WeatherAnimation/Weather/IDrawElement;-><init>(IIFF)V

    .line 31
    const/4 v0, 0x1

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mCurrDrawIndex:I

    .line 32
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mOffset:F

    .line 33
    sget-object v0, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_DEFAULT:Lcn/nubia/WeatherAnimation/WeatherType;

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mWeatherType:Lcn/nubia/WeatherAnimation/WeatherType;

    .line 35
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mRandom:Ljava/util/Random;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

    .line 38
    return-void
.end method


# virtual methods
.method public addCloud(I[FFF)Lcn/nubia/WeatherAnimation/Weather/Cloud;
    .locals 6
    .param p1, "bitmapId"    # I
    .param p2, "location"    # [F
    .param p3, "speed"    # F
    .param p4, "alpha"    # F

    .prologue
    .line 218
    new-instance v0, Lcn/nubia/WeatherAnimation/Weather/Cloud;

    iget v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mWidth:I

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mHeight:I

    iget v4, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mWidthScale:F

    iget v5, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mHeightScale:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/WeatherAnimation/Weather/Cloud;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 219
    .local v0, "cloud":Lcn/nubia/WeatherAnimation/Weather/Cloud;
    invoke-virtual {v0, p1}, Lcn/nubia/WeatherAnimation/Weather/Cloud;->setBitmapId(I)V

    .line 220
    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    const/4 v3, 0x2

    aget v3, p2, v3

    const/4 v4, 0x3

    aget v4, p2, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/WeatherAnimation/Weather/Cloud;->setDrawRect(FFFF)V

    .line 221
    invoke-virtual {v0, p3}, Lcn/nubia/WeatherAnimation/Weather/Cloud;->setSpeed(F)V

    .line 222
    invoke-virtual {v0, p4}, Lcn/nubia/WeatherAnimation/Weather/Cloud;->setAlpha(F)V

    .line 223
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Cloud;->setTextureXOffset(F)V

    .line 224
    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mCurrDrawIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mCurrDrawIndex:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Cloud;->setDrawIndex(F)V

    .line 225
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 226
    return-object v0
.end method

.method public addDrawElement(Lcn/nubia/WeatherAnimation/Weather/DrawElement;)V
    .locals 2
    .param p1, "drawElement"    # Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    .prologue
    .line 194
    if-nez p1, :cond_0

    .line 195
    const-string v0, "Weather"

    const-string v1, "addDrawElement (null == drawElement)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_0
    return-void

    .line 199
    :cond_0
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mCurrDrawIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mCurrDrawIndex:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->setDrawIndex(F)V

    .line 200
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addMeteorite(I[FFFF)Lcn/nubia/WeatherAnimation/Weather/Meteorite;
    .locals 6
    .param p1, "bitmapId"    # I
    .param p2, "center"    # [F
    .param p3, "scale"    # F
    .param p4, "speed"    # F
    .param p5, "alpha"    # F

    .prologue
    .line 232
    new-instance v0, Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    iget v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mWidth:I

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mHeight:I

    iget v4, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mWidthScale:F

    iget v5, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mHeightScale:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 233
    .local v0, "meteorite":Lcn/nubia/WeatherAnimation/Weather/Meteorite;
    invoke-virtual {v0, p1}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->setBitmapId(I)V

    .line 234
    invoke-virtual {v0, p2}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->setCenter([F)V

    .line 235
    invoke-virtual {v0, p3}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->setScale(F)V

    .line 236
    invoke-virtual {v0, p4}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->setSpeed(F)V

    .line 237
    invoke-virtual {v0, p5}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->setAlpha(F)V

    .line 238
    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mCurrDrawIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mCurrDrawIndex:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->setDrawIndex(F)V

    .line 239
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 240
    return-object v0
.end method

.method public addMeteoriteEx(I[FFFF)Lcn/nubia/WeatherAnimation/Weather/Meteorite;
    .locals 3
    .param p1, "bitmapId"    # I
    .param p2, "center"    # [F
    .param p3, "scale"    # F
    .param p4, "speed"    # F
    .param p5, "alpha"    # F

    .prologue
    .line 246
    invoke-virtual/range {p0 .. p5}, Lcn/nubia/WeatherAnimation/Weather/Weather;->addMeteorite(I[FFFF)Lcn/nubia/WeatherAnimation/Weather/Meteorite;

    move-result-object v0

    .line 247
    .local v0, "meteorite":Lcn/nubia/WeatherAnimation/Weather/Meteorite;
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->setResources(Landroid/content/res/Resources;)V

    .line 248
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->setShaderProgram(Lcn/nubia/OpenGL/ShaderProgram;)V

    .line 249
    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/Weather/Meteorite;->create()V

    .line 250
    return-object v0
.end method

.method public addParticle(Lcn/nubia/Particle/ParticleSystem;)V
    .locals 2
    .param p1, "particle"    # Lcn/nubia/Particle/ParticleSystem;

    .prologue
    .line 277
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mCurrDrawIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mCurrDrawIndex:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Lcn/nubia/Particle/ParticleSystem;->setDrawIndex(F)V

    .line 278
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 279
    return-void
.end method

.method public addThunder(IFF[F[F)Lcn/nubia/WeatherAnimation/Weather/Thunder;
    .locals 6
    .param p1, "bitmapId"    # I
    .param p2, "scale"    # F
    .param p3, "speed"    # F
    .param p4, "drawRect"    # [F
    .param p5, "alphaLoaction"    # [F

    .prologue
    .line 256
    new-instance v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;

    iget v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mWidth:I

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mHeight:I

    iget v4, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mWidthScale:F

    iget v5, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mHeightScale:F

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/WeatherAnimation/Weather/Thunder;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V

    .line 257
    .local v0, "thunder":Lcn/nubia/WeatherAnimation/Weather/Thunder;
    invoke-virtual {v0, p1}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setBitmapId(I)V

    .line 258
    const/4 v1, 0x0

    aget v1, p4, v1

    const/4 v2, 0x1

    aget v2, p4, v2

    const/4 v3, 0x2

    aget v3, p4, v3

    const/4 v4, 0x3

    aget v4, p4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setDrawRect(FFFF)V

    .line 259
    invoke-virtual {v0, p5}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setAlphaLocation([F)V

    .line 260
    invoke-virtual {v0, p2}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setScale(F)V

    .line 261
    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mCurrDrawIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mCurrDrawIndex:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setDrawIndex(F)V

    .line 262
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    return-object v0
.end method

.method public addThunderEx(IFF[F[F)Lcn/nubia/WeatherAnimation/Weather/Thunder;
    .locals 3
    .param p1, "bitmapId"    # I
    .param p2, "scale"    # F
    .param p3, "speed"    # F
    .param p4, "drawRect"    # [F
    .param p5, "alphaLoaction"    # [F

    .prologue
    .line 269
    invoke-virtual/range {p0 .. p5}, Lcn/nubia/WeatherAnimation/Weather/Weather;->addThunder(IFF[F[F)Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v0

    .line 270
    .local v0, "thunder":Lcn/nubia/WeatherAnimation/Weather/Thunder;
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setResources(Landroid/content/res/Resources;)V

    .line 271
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setShaderProgram(Lcn/nubia/OpenGL/ShaderProgram;)V

    .line 272
    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->create()V

    .line 273
    return-object v0
.end method

.method public create()V
    .locals 3

    .prologue
    .line 43
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 44
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 47
    return-void

    .line 45
    :cond_0
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    invoke-virtual {v2}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->create()V

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public delDrawElement(Lcn/nubia/WeatherAnimation/Weather/DrawElement;)V
    .locals 3
    .param p1, "drawElement"    # Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    .prologue
    .line 204
    if-nez p1, :cond_0

    .line 205
    const-string v1, "Weather"

    const-string v2, "delDrawElement (null == drawElement)"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :goto_0
    return-void

    .line 209
    :cond_0
    invoke-virtual {p1}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->getTextureId()I

    move-result v0

    .line 210
    .local v0, "id":I
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-virtual {v1, v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->addNeedDelTextureId(I)V

    .line 211
    invoke-virtual {p1}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->destroy()V

    .line 212
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 53
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 55
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 59
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 60
    return-void

    .line 56
    :cond_0
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    invoke-virtual {v2}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->destroy()V

    .line 55
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFPS()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x2

    return v0
.end method

.method public getOffset()F
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mOffset:F

    return v0
.end method

.method public getTextureIdList()[I
    .locals 4

    .prologue
    .line 147
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 148
    .local v2, "n":I
    new-array v1, v2, [I

    .line 150
    .local v1, "id":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_0

    .line 154
    return-object v1

    .line 151
    :cond_0
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    invoke-virtual {v3}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->getTextureId()I

    move-result v3

    aput v3, v1, v0

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getType()Lcn/nubia/WeatherAnimation/WeatherType;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mWeatherType:Lcn/nubia/WeatherAnimation/WeatherType;

    return-object v0
.end method

.method public isTypeOf(Lcn/nubia/WeatherAnimation/WeatherType;)Z
    .locals 1
    .param p1, "type"    # Lcn/nubia/WeatherAnimation/WeatherType;

    .prologue
    .line 186
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mWeatherType:Lcn/nubia/WeatherAnimation/WeatherType;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public needRefresh()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)[F
    .locals 8
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 78
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawInfo:[F

    aput v4, v3, v6

    .line 79
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawInfo:[F

    aput v4, v3, v7

    .line 80
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 81
    .local v1, "n":I
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    new-instance v4, Lcn/nubia/WeatherAnimation/Weather/Weather$SortDrawIndex;

    invoke-direct {v4, p0}, Lcn/nubia/WeatherAnimation/Weather/Weather$SortDrawIndex;-><init>(Lcn/nubia/WeatherAnimation/Weather/Weather;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 92
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawInfo:[F

    return-object v3

    .line 84
    :cond_0
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    invoke-virtual {v3, p1}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)[F

    move-result-object v2

    .line 86
    .local v2, "tempDrawInfo":[F
    if-eqz v2, :cond_1

    .line 87
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawInfo:[F

    aget v4, v3, v6

    aget v5, v2, v6

    add-float/2addr v4, v5

    aput v4, v3, v6

    .line 88
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawInfo:[F

    aget v4, v3, v7

    aget v5, v2, v7

    add-float/2addr v4, v5

    aput v4, v3, v7

    .line 83
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onProcessFrame(F)V
    .locals 3
    .param p1, "time"    # F

    .prologue
    .line 66
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 68
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 71
    return-void

    .line 69
    :cond_0
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    invoke-virtual {v2, p1}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->onProcessFrame(F)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public openGLRunnable()Z
    .locals 4

    .prologue
    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "flag":Z
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 103
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 111
    const/4 v3, 0x0

    :goto_1
    return v3

    .line 104
    :cond_0
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    invoke-virtual {v3}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->openGLRunnable()Z

    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    const/4 v3, 0x1

    goto :goto_1

    .line 103
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setBackgroundFlash(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 166
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-virtual {v0, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->setBackgroundFlash(F)V

    .line 167
    return-void
.end method

.method public setOffset(F)V
    .locals 0
    .param p1, "offset"    # F

    .prologue
    .line 174
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mOffset:F

    .line 175
    return-void
.end method

.method public setRenderer(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)V
    .locals 0
    .param p1, "renderer"    # Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    .prologue
    .line 162
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    .line 163
    return-void
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 3
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 130
    invoke-super {p0, p1}, Lcn/nubia/WeatherAnimation/Weather/IDrawElement;->setResources(Landroid/content/res/Resources;)V

    .line 134
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 136
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v1, :cond_0

    .line 140
    return-void

    .line 137
    :cond_0
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    invoke-virtual {v2, p1}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->setResources(Landroid/content/res/Resources;)V

    .line 136
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setShaderPrograms([Lcn/nubia/OpenGL/ShaderProgram;)V
    .locals 5
    .param p1, "program"    # [Lcn/nubia/OpenGL/ShaderProgram;

    .prologue
    .line 119
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

    .line 120
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 122
    .local v2, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 126
    return-void

    .line 123
    :cond_0
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mDrawElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;

    .line 124
    .local v0, "drawElement":Lcn/nubia/WeatherAnimation/Weather/DrawElement;
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-virtual {v0, v3}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->setShaderProgram(Lcn/nubia/OpenGL/ShaderProgram;)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public setType(Lcn/nubia/WeatherAnimation/WeatherType;)V
    .locals 0
    .param p1, "type"    # Lcn/nubia/WeatherAnimation/WeatherType;

    .prologue
    .line 182
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/Weather/Weather;->mWeatherType:Lcn/nubia/WeatherAnimation/WeatherType;

    .line 183
    return-void
.end method
