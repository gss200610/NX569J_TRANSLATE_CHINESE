.class public abstract Lcn/nubia/WeatherAnimation/Weather/DrawElement;
.super Lcn/nubia/WeatherAnimation/Weather/IDrawElement;
.source "DrawElement.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DrawElement"


# instance fields
.field private final BITMAP_SCALE_THRESHOLD:F

.field protected mAlpha:F

.field protected mBitmap:Landroid/graphics/Bitmap;

.field protected mBitmapId:I

.field protected mBitmapScale:F

.field protected mCbb:Ljava/nio/ByteBuffer;

.field protected mDrawIndex:F

.field protected mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

.field protected mTextureId:I

.field protected mVbb:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(IIFF)V
    .locals 3
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/WeatherAnimation/Weather/IDrawElement;-><init>(IIFF)V

    .line 13
    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->BITMAP_SCALE_THRESHOLD:F

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmapId:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mTextureId:I

    .line 29
    iput v2, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mAlpha:F

    .line 30
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mDrawIndex:F

    .line 31
    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 32
    iput v2, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmapScale:F

    .line 33
    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mVbb:Ljava/nio/ByteBuffer;

    .line 34
    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mCbb:Ljava/nio/ByteBuffer;

    .line 35
    return-void
.end method


# virtual methods
.method public create()V
    .locals 5

    .prologue
    .line 39
    const/4 v3, -0x1

    iget v4, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmapId:I

    if-eq v3, v4, :cond_1

    .line 40
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    .line 41
    const-string v3, "DrawElement"

    const-string v4, "create mBitmap twice!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 45
    :cond_0
    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mWidthScale:F

    iget v4, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mHeightScale:F

    add-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iput v3, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmapScale:F

    .line 47
    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmapScale:F

    const v4, 0x3f4ccccd    # 0.8f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 51
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mResources:Landroid/content/res/Resources;

    iget v4, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmapId:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 52
    .local v2, "tempBitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmapScale:F

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 53
    .local v1, "dstWidth":I
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmapScale:F

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .line 54
    .local v0, "dstHeight":I
    const/4 v3, 0x1

    invoke-static {v2, v1, v0, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 55
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 61
    .end local v0    # "dstHeight":I
    .end local v1    # "dstWidth":I
    .end local v2    # "tempBitmap":Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 57
    :cond_2
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mResources:Landroid/content/res/Resources;

    iget v4, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmapId:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 58
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmapScale:F

    goto :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 69
    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mAlpha:F

    return v0
.end method

.method public getBitmapId()I
    .locals 1

    .prologue
    .line 84
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmapId:I

    return v0
.end method

.method public getDrawIndex()F
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mDrawIndex:F

    return v0
.end method

.method public getTextureId()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mTextureId:I

    return v0
.end method

.method public openGLRunnable()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcn/nubia/OpenGL/OpenGLUtil;->addTexture(Landroid/graphics/Bitmap;)I

    move-result v0

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mTextureId:I

    .line 75
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmap:Landroid/graphics/Bitmap;

    .line 77
    const/4 v0, 0x1

    .line 80
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAlpha(F)V
    .locals 0
    .param p1, "alpha"    # F

    .prologue
    .line 96
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mAlpha:F

    .line 97
    return-void
.end method

.method public setBitmapId(I)V
    .locals 0
    .param p1, "id"    # I

    .prologue
    .line 88
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mBitmapId:I

    .line 89
    return-void
.end method

.method public setDrawIndex(F)V
    .locals 0
    .param p1, "idx"    # F

    .prologue
    .line 108
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mDrawIndex:F

    .line 109
    return-void
.end method

.method public setShaderProgram(Lcn/nubia/OpenGL/ShaderProgram;)V
    .locals 0
    .param p1, "program"    # Lcn/nubia/OpenGL/ShaderProgram;

    .prologue
    .line 112
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    .line 113
    return-void
.end method
