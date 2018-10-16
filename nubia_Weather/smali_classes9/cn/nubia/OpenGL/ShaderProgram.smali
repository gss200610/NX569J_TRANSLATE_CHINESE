.class public Lcn/nubia/OpenGL/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"


# instance fields
.field public mAlphaBeginYHandle:I

.field public mAlphaChangedHandle:I

.field public mAlphaHandle:I

.field public mAlphaHeightHandle:I

.field public mAlphaLoactionYHandle:I

.field public mAlphaLocationHandle:I

.field public mColorHandle:I

.field public mHorFactorHandle:I

.field public mId:I

.field public mMVPMatrixHandle:I

.field public mPositionHandle:I

.field public mRectHandle:I

.field public mStartAngleHandle:I

.field public mTexCoorHandle:I

.field public mVerFactorHandle:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "program"    # I

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    .line 27
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "uAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaHandle:I

    .line 28
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "uMVPMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mMVPMatrixHandle:I

    .line 29
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "aPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mPositionHandle:I

    .line 30
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "aTexCoor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mTexCoorHandle:I

    .line 31
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "aColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mColorHandle:I

    .line 32
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "uAlphaBeginY"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaBeginYHandle:I

    .line 33
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "uAlphaHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaHeightHandle:I

    .line 35
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "uAlphaChanged"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaChangedHandle:I

    .line 36
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "uAlphaChangedLoaction"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaLoactionYHandle:I

    .line 39
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "uStartAngle"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mStartAngleHandle:I

    .line 40
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "uRangeRect"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mRectHandle:I

    .line 41
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "uHorFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mHorFactorHandle:I

    .line 42
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "uVerFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mVerFactorHandle:I

    .line 44
    iget v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mId:I

    const-string v1, "uAlphaLocation"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/OpenGL/ShaderProgram;->mAlphaLocationHandle:I

    .line 45
    return-void
.end method
