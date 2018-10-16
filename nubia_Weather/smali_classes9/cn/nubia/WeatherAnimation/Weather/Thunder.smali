.class public Lcn/nubia/WeatherAnimation/Weather/Thunder;
.super Lcn/nubia/WeatherAnimation/Weather/DrawElement;
.source "Thunder.java"


# instance fields
.field private mAlphaLocation:[F

.field private mBottom:F

.field private mDrawRect:Landroid/graphics/RectF;

.field private mLeft:F

.field private mLife:F

.field private mRight:F

.field private mScale:F

.field private mSpeed:F

.field private mTop:F

.field private mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;


# direct methods
.method public constructor <init>(Lcn/nubia/WeatherAnimation/Weather/Weather;IIFF)V
    .locals 2
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "widthScale"    # F
    .param p5, "heightScale"    # F

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0, p2, p3, p4, p5}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;-><init>(IIFF)V

    .line 25
    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mScale:F

    .line 26
    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mSpeed:F

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    .line 28
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 29
    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mLeft:F

    .line 30
    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mTop:F

    .line 31
    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mRight:F

    .line 32
    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mBottom:F

    .line 33
    iput v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mLife:F

    .line 34
    return-void
.end method


# virtual methods
.method public create()V
    .locals 4

    .prologue
    const/16 v2, 0x20

    .line 38
    invoke-super {p0}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->create()V

    .line 39
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mVbb:Ljava/nio/ByteBuffer;

    .line 40
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mVbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 41
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mCbb:Ljava/nio/ByteBuffer;

    .line 42
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mCbb:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 44
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mLeft:F

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 45
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mTop:F

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 46
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mRight:F

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mLeft:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mWidthScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mScale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 47
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mBottom:F

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mTop:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mHeightScale:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mScale:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 48
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-super {p0}, Lcn/nubia/WeatherAnimation/Weather/DrawElement;->destroy()V

    .line 53
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 54
    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mVbb:Ljava/nio/ByteBuffer;

    .line 55
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 56
    iput-object v1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mCbb:Ljava/nio/ByteBuffer;

    .line 57
    return-void
.end method

.method public getLife()F
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mLife:F

    return v0
.end method

.method public getSpeed()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mSpeed:F

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)[F
    .locals 18
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 72
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mTextureId:I

    if-nez v1, :cond_0

    .line 74
    const/4 v1, 0x0

    .line 138
    :goto_0
    return-object v1

    .line 77
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mWeather:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->getOffset()F

    move-result v13

    .line 78
    .local v13, "alpha":F
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mHeight:I

    int-to-float v14, v1

    .line 79
    .local v14, "alphaBeginY":F
    const/4 v15, 0x0

    .line 81
    .local v15, "alphaHeight":F
    const/high16 v1, 0x3f000000    # 0.5f

    cmpl-float v1, v13, v1

    if-lez v1, :cond_1

    .line 82
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v13

    mul-float/2addr v2, v3

    sub-float v13, v1, v2

    .line 87
    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mAlpha:F

    mul-float/2addr v13, v1

    .line 89
    const/4 v1, 0x0

    cmpl-float v1, v1, v13

    if-nez v1, :cond_2

    .line 91
    const/4 v1, 0x0

    goto :goto_0

    .line 84
    :cond_1
    const/4 v13, 0x0

    goto :goto_1

    .line 95
    :cond_2
    const/16 v1, 0x8

    new-array v0, v1, [F

    move-object/from16 v17, v0

    const/4 v1, 0x0

    .line 96
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v17, v1

    const/4 v1, 0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    aput v2, v17, v1

    const/4 v1, 0x2

    .line 97
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    aput v2, v17, v1

    const/4 v1, 0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v17, v1

    const/4 v1, 0x4

    .line 98
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v17, v1

    const/4 v1, 0x5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    aput v2, v17, v1

    const/4 v1, 0x6

    .line 99
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    aput v2, v17, v1

    const/4 v1, 0x7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    aput v2, v17, v1

    .line 102
    .local v17, "vertices":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mVbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v6

    .line 103
    .local v6, "mVertexBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v6, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 106
    const/16 v1, 0x8

    new-array v0, v1, [F

    move-object/from16 v16, v0

    fill-array-data v16, :array_0

    .line 113
    .local v16, "texCoor":[F
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mCbb:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v12

    .line 114
    .local v12, "mTexCoorBuffer":Ljava/nio/FloatBuffer;
    move-object/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 115
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 117
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 118
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaLocationHandle:I

    const/4 v2, 0x3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mAlphaLocation:[F

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniform1fv(II[FI)V

    .line 119
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaBeginYHandle:I

    invoke-static {v1, v14}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 120
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaHeightHandle:I

    invoke-static {v1, v15}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    .line 121
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mMVPMatrixHandle:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 122
    invoke-static {}, Lcn/nubia/OpenGL/MatrixState;->getVPMatrix()[F

    move-result-object v4

    const/4 v5, 0x0

    .line 121
    invoke-static {v1, v2, v3, v4, v5}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 123
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mPositionHandle:I

    const/4 v2, 0x2

    .line 124
    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/16 v5, 0x8

    .line 123
    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 125
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v7, v1, Lcn/nubia/OpenGL/ShaderProgram;->mTexCoorHandle:I

    const/4 v8, 0x2

    .line 126
    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0x8

    .line 125
    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 127
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mPositionHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 128
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mShaderProgram:Lcn/nubia/OpenGL/ShaderProgram;

    iget v1, v1, Lcn/nubia/OpenGL/ShaderProgram;->mTexCoorHandle:I

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 129
    const v1, 0x84c0

    invoke-static {v1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 130
    const/16 v1, 0xde1

    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mTextureId:I

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 131
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 132
    const/4 v1, 0x1

    const/16 v2, 0x303

    invoke-static {v1, v2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 133
    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-static {v1, v2, v3}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    .line 134
    const/16 v1, 0xbe2

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 136
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawInfo:[F

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    aput v3, v1, v2

    .line 137
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawInfo:[F

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    aput v3, v1, v2

    .line 138
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mDrawInfo:[F

    goto/16 :goto_0

    .line 106
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onProcessFrame(F)V
    .locals 1
    .param p1, "time"    # F

    .prologue
    .line 61
    iget v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mLife:F

    add-float/2addr v0, p1

    iput v0, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mLife:F

    .line 62
    return-void
.end method

.method public setAlphaLocation([F)V
    .locals 0
    .param p1, "alphaLocation"    # [F

    .prologue
    .line 165
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mAlphaLocation:[F

    .line 166
    return-void
.end method

.method public setDrawRect(FFFF)V
    .locals 0
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 142
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mLeft:F

    .line 143
    iput p2, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mTop:F

    .line 144
    iput p3, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mRight:F

    .line 145
    iput p4, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mBottom:F

    .line 146
    return-void
.end method

.method public setScale(F)V
    .locals 0
    .param p1, "scale"    # F

    .prologue
    .line 149
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mScale:F

    .line 150
    return-void
.end method

.method public setSpeed(F)V
    .locals 0
    .param p1, "speed"    # F

    .prologue
    .line 157
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/Thunder;->mSpeed:F

    .line 158
    return-void
.end method
