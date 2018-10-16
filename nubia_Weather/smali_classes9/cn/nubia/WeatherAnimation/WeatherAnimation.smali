.class public Lcn/nubia/WeatherAnimation/WeatherAnimation;
.super Ljava/lang/Object;
.source "WeatherAnimation.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherAnimation"


# instance fields
.field private final SWITCH_ANIMATION_DURATION:I

.field private mContext:Landroid/content/Context;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    const/16 v0, 0xfa

    iput v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->SWITCH_ANIMATION_DURATION:I

    .line 16
    const-string v0, "WeatherAnimation"

    const-string v1, "WeatherAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mContext:Landroid/content/Context;

    .line 18
    return-void
.end method


# virtual methods
.method public isGLSurfaceViewCreated()Z
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->isSurfaceCreated()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/opengl/GLSurfaceView;)V
    .locals 7
    .param p1, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    const/4 v5, 0x0

    const/16 v1, 0x8

    .line 21
    const-string v0, "WeatherAnimation"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onCreate glSurfaceView = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    new-instance v0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    iget-object v2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;-><init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    .line 23
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->onCreate()V

    .line 24
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 25
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 26
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 27
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 28
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 29
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v5}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 30
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 45
    const-string v0, "WeatherAnimation"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->onDestroy()V

    .line 47
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 33
    const-string v0, "WeatherAnimation"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 35
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->onPause()V

    .line 36
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 39
    const-string v0, "WeatherAnimation"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 41
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->onResume()V

    .line 42
    return-void
.end method

.method public switchWeather(Lcn/nubia/WeatherAnimation/WeatherType;)V
    .locals 3
    .param p1, "type"    # Lcn/nubia/WeatherAnimation/WeatherType;

    .prologue
    .line 50
    const-string v0, "WeatherAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchWeather type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-virtual {v0, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->switchWeather(Lcn/nubia/WeatherAnimation/WeatherType;)V

    .line 52
    return-void
.end method

.method public switchWeatherAnimation(Lcn/nubia/WeatherAnimation/WeatherType;)V
    .locals 4
    .param p1, "type"    # Lcn/nubia/WeatherAnimation/WeatherType;

    .prologue
    .line 55
    const-string v0, "WeatherAnimation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "switchWeatherAnimation type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimation;->mRenderer:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v2, v3, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->switchWeatherAnimation(JLcn/nubia/WeatherAnimation/WeatherType;)V

    .line 57
    return-void
.end method
