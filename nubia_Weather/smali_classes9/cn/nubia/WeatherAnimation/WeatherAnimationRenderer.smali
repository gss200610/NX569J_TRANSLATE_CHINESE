.class public Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;
.super Ljava/lang/Object;
.source "WeatherAnimationRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;,
        Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;,
        Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;
    }
.end annotation


# static fields
.field public static final DEFALUT_HEIGHT:I = 0x780

.field public static final DEFALUT_WIDTH:I = 0x438

.field public static final FPS0:I = -0x1

.field public static final FPS15:I = 0x4

.field public static final FPS20:I = 0x3

.field public static final FPS30:I = 0x2

.field public static final FPS60:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WeatherAnimationRenderer"

.field public static final TIME_MAX:F = 133.33333f


# instance fields
.field private mAnimationUpdateListener:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;

.field private mBackground:Lcn/nubia/WeatherAnimation/Weather/Background;

.field private mContext:Landroid/content/Context;

.field private mDrawInfo:[F

.field private mFPS:I

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHeight:I

.field private mIsSurfaceCreated:Z

.field private mIsSwitchAnimation:Z

.field private mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

.field private mNeedDelTextureId:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedDrawFirst:Z

.field private mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

.field private mSwitchAnimationListener:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;

.field private mSwitchAnimationUpdateListener:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;

.field private mSwitchValueAnimator:Landroid/animation/ValueAnimator;

.field private final mSynchronized:Ljava/lang/Object;

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

.field private mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

.field private mWeatherTypeCurr:Lcn/nubia/WeatherAnimation/WeatherType;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/opengl/GLSurfaceView;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "glSurfaceView"    # Landroid/opengl/GLSurfaceView;

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSynchronized:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x3

    iput v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mFPS:I

    .line 69
    new-array v0, v6, [F

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mDrawInfo:[F

    .line 70
    iput-boolean v5, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mIsSurfaceCreated:Z

    .line 71
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mContext:Landroid/content/Context;

    .line 72
    iput-object p2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 75
    iput-object v4, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 76
    iput-object v4, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 77
    sget-object v0, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_DEFAULT:Lcn/nubia/WeatherAnimation/WeatherType;

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherTypeCurr:Lcn/nubia/WeatherAnimation/WeatherType;

    .line 78
    new-instance v0, Lcn/nubia/WeatherAnimation/Weather/Background;

    const/16 v1, 0x438

    const/16 v2, 0x780

    invoke-direct {v0, v1, v2, v3, v3}, Lcn/nubia/WeatherAnimation/Weather/Background;-><init>(IIFF)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mBackground:Lcn/nubia/WeatherAnimation/Weather/Background;

    .line 79
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mBackground:Lcn/nubia/WeatherAnimation/Weather/Background;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/Weather/Background;->create()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mNeedDelTextureId:Ljava/util/ArrayList;

    .line 85
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 86
    new-instance v0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;

    invoke-direct {v0, p0, v4}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;-><init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mAnimationUpdateListener:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;

    .line 87
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mAnimationUpdateListener:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 88
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mValueAnimator:Landroid/animation/ValueAnimator;

    const-wide/32 v2, 0x36ee80

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v6, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 90
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 93
    iput-boolean v5, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mNeedDrawFirst:Z

    .line 94
    iput-boolean v5, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mIsSwitchAnimation:Z

    .line 95
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    .line 96
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchValueAnimator:Landroid/animation/ValueAnimator;

    .line 97
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mLinearInterpolator:Landroid/view/animation/LinearInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 98
    new-instance v0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;

    invoke-direct {v0, p0, v4}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;-><init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchAnimationListener:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;

    .line 99
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchAnimationListener:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 100
    new-instance v0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;

    invoke-direct {v0, p0, v4}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;-><init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;)V

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchAnimationUpdateListener:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;

    .line 101
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchValueAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchAnimationUpdateListener:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchValueAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v6, [F

    fill-array-data v1, :array_1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 103
    return-void

    .line 89
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 102
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$0(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mFPS:I

    return v0
.end method

.method static synthetic access$1(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mIsSwitchAnimation:Z

    return v0
.end method

.method static synthetic access$10(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    return-object v0
.end method

.method static synthetic access$11(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Lcn/nubia/WeatherAnimation/Weather/Weather;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    return-void
.end method

.method static synthetic access$12(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Lcn/nubia/WeatherAnimation/Weather/Weather;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    return-void
.end method

.method static synthetic access$13(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;I)V
    .locals 0

    .prologue
    .line 36
    iput p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mFPS:I

    return-void
.end method

.method static synthetic access$14(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Background;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mBackground:Lcn/nubia/WeatherAnimation/Weather/Background;

    return-object v0
.end method

.method static synthetic access$15(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/WeatherType;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherTypeCurr:Lcn/nubia/WeatherAnimation/WeatherType;

    return-object v0
.end method

.method static synthetic access$2(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mNeedDrawFirst:Z

    return v0
.end method

.method static synthetic access$3(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Z)V
    .locals 0

    .prologue
    .line 60
    iput-boolean p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mNeedDrawFirst:Z

    return-void
.end method

.method static synthetic access$4(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;F)Z
    .locals 1

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->onProcessFrame(F)Z

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Landroid/opengl/GLSurfaceView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$6(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Z)V
    .locals 0

    .prologue
    .line 61
    iput-boolean p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mIsSwitchAnimation:Z

    return-void
.end method

.method static synthetic access$7(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSynchronized:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$8(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    return-object v0
.end method

.method static synthetic access$9(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Lcn/nubia/WeatherAnimation/Weather/Weather;)V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->destroyWeather(Lcn/nubia/WeatherAnimation/Weather/Weather;)V

    return-void
.end method

.method private addNeedDelTextureIds([I)V
    .locals 4
    .param p1, "ids"    # [I

    .prologue
    .line 355
    if-nez p1, :cond_1

    .line 364
    :cond_0
    return-void

    .line 359
    :cond_1
    array-length v1, p1

    .line 361
    .local v1, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 362
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mNeedDelTextureId:Ljava/util/ArrayList;

    aget v3, p1, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private createShader(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 7
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 339
    sget-object v5, Lcn/nubia/OpenGL/ShaderUtil;->SHADER_NAME:[[Ljava/lang/String;

    array-length v2, v5

    .line 340
    .local v2, "n":I
    new-array v5, v2, [Lcn/nubia/OpenGL/ShaderProgram;

    iput-object v5, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

    .line 342
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_0

    .line 349
    return-void

    .line 343
    :cond_0
    sget-object v5, Lcn/nubia/OpenGL/ShaderUtil;->SHADER_NAME:[[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v6, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v6}, Landroid/opengl/GLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/OpenGL/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v4

    .line 344
    .local v4, "vertexShader":Ljava/lang/String;
    sget-object v5, Lcn/nubia/OpenGL/ShaderUtil;->SHADER_NAME:[[Ljava/lang/String;

    aget-object v5, v5, v1

    const/4 v6, 0x1

    aget-object v5, v5, v6

    iget-object v6, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v6}, Landroid/opengl/GLSurfaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/OpenGL/ShaderUtil;->loadFromAssetsFile(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "fragShader":Ljava/lang/String;
    invoke-static {v4, v0}, Lcn/nubia/OpenGL/ShaderUtil;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 346
    .local v3, "programId":I
    iget-object v5, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

    new-instance v6, Lcn/nubia/OpenGL/ShaderProgram;

    invoke-direct {v6, v3}, Lcn/nubia/OpenGL/ShaderProgram;-><init>(I)V

    aput-object v6, v5, v1

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private createWeather(Lcn/nubia/WeatherAnimation/Weather/Weather;Lcn/nubia/WeatherAnimation/WeatherType;)Lcn/nubia/WeatherAnimation/Weather/Weather;
    .locals 2
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;
    .param p2, "type"    # Lcn/nubia/WeatherAnimation/WeatherType;

    .prologue
    .line 302
    invoke-direct {p0, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->destroyWeather(Lcn/nubia/WeatherAnimation/Weather/Weather;)V

    .line 303
    iget v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWidth:I

    iget v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mHeight:I

    invoke-static {p2, v0, v1}, Lcn/nubia/WeatherAnimation/Weather/WeatherFactory;->createWeather(Lcn/nubia/WeatherAnimation/WeatherType;II)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object p1

    .line 304
    invoke-virtual {p1, p0}, Lcn/nubia/WeatherAnimation/Weather/Weather;->setRenderer(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)V

    .line 305
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/WeatherAnimation/Weather/Weather;->setResources(Landroid/content/res/Resources;)V

    .line 306
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

    invoke-virtual {p1, v0}, Lcn/nubia/WeatherAnimation/Weather/Weather;->setShaderPrograms([Lcn/nubia/OpenGL/ShaderProgram;)V

    .line 307
    invoke-virtual {p1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->create()V

    .line 308
    return-object p1
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 386
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSynchronized:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/Weather/Weather;->getType()Lcn/nubia/WeatherAnimation/WeatherType;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherTypeCurr:Lcn/nubia/WeatherAnimation/WeatherType;

    .line 389
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-direct {p0, v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->destroyWeather(Lcn/nubia/WeatherAnimation/Weather/Weather;)V

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 393
    :cond_0
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/Weather/Weather;->getType()Lcn/nubia/WeatherAnimation/WeatherType;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherTypeCurr:Lcn/nubia/WeatherAnimation/WeatherType;

    .line 395
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-direct {p0, v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->destroyWeather(Lcn/nubia/WeatherAnimation/Weather/Weather;)V

    .line 396
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 386
    :cond_1
    monitor-exit v1

    .line 400
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private destroyWeather(Lcn/nubia/WeatherAnimation/Weather/Weather;)V
    .locals 1
    .param p1, "weather"    # Lcn/nubia/WeatherAnimation/Weather/Weather;

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    invoke-virtual {p1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->getTextureIdList()[I

    move-result-object v0

    .line 314
    .local v0, "ids":[I
    invoke-direct {p0, v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->addNeedDelTextureIds([I)V

    .line 315
    invoke-virtual {p1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->destroy()V

    .line 317
    .end local v0    # "ids":[I
    :cond_0
    return-void
.end method

.method private onProcessFrame(F)Z
    .locals 4
    .param p1, "time"    # F

    .prologue
    .line 106
    const/4 v0, 0x0

    .line 107
    .local v0, "needRefresh1":Z
    const/4 v1, 0x0

    .line 109
    .local v1, "needRefresh2":Z
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSynchronized:Ljava/lang/Object;

    monitor-enter v3

    .line 110
    :try_start_0
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v2, p1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->onProcessFrame(F)V

    .line 112
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v2}, Lcn/nubia/WeatherAnimation/Weather/Weather;->needRefresh()Z

    move-result v0

    .line 115
    :cond_0
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    if-eqz v2, :cond_1

    .line 116
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v2, p1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->onProcessFrame(F)V

    .line 117
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v2}, Lcn/nubia/WeatherAnimation/Weather/Weather;->needRefresh()Z

    move-result v1

    .line 109
    :cond_1
    monitor-exit v3

    .line 122
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    return v2

    .line 109
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 122
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private openGLRunnable()V
    .locals 2

    .prologue
    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, "flag":Z
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mNeedDelTextureId:Ljava/util/ArrayList;

    invoke-static {v1}, Lcn/nubia/OpenGL/OpenGLUtil;->delTextures(Ljava/util/ArrayList;)V

    .line 374
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mNeedDelTextureId:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 376
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    if-eqz v1, :cond_0

    .line 377
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->openGLRunnable()Z

    move-result v0

    .line 380
    :cond_0
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 381
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->openGLRunnable()Z

    .line 383
    :cond_1
    return-void
.end method

.method private setCamera()V
    .locals 9

    .prologue
    const/4 v6, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    const/4 v5, 0x0

    const/high16 v2, -0x40800000    # -1.0f

    .line 326
    iget v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWidth:I

    int-to-float v3, v3

    div-float v0, v3, v4

    .line 327
    .local v0, "x":F
    iget v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mHeight:I

    int-to-float v3, v3

    div-float v1, v3, v4

    .line 328
    .local v1, "y":F
    iget v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWidth:I

    iget v4, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mHeight:I

    invoke-static {v6, v6, v3, v4}, Landroid/opengl/GLES20;->glViewport(IIII)V

    move v3, v0

    move v4, v1

    move v6, v5

    move v7, v2

    move v8, v5

    .line 329
    invoke-static/range {v0 .. v8}, Lcn/nubia/OpenGL/MatrixState;->gluLookAt(FFFFFFFFF)V

    .line 330
    neg-float v3, v0

    neg-float v5, v1

    const/high16 v8, 0x3f800000    # 1.0f

    move v4, v0

    move v6, v1

    move v7, v2

    invoke-static/range {v3 .. v8}, Lcn/nubia/OpenGL/MatrixState;->glOrtho(FFFFFF)V

    .line 331
    return-void
.end method

.method private setSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 233
    iget v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWidth:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mHeight:I

    if-ne p2, v0, :cond_0

    .line 240
    :goto_0
    return-void

    .line 237
    :cond_0
    iput p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWidth:I

    .line 238
    iput p2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mHeight:I

    .line 239
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->setCamera()V

    goto :goto_0
.end method

.method private switchWeatherAnimationEx(JLcn/nubia/WeatherAnimation/WeatherType;)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "type"    # Lcn/nubia/WeatherAnimation/WeatherType;

    .prologue
    .line 278
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    if-nez v0, :cond_0

    .line 279
    invoke-direct {p0, p3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->switchWeatherEx(Lcn/nubia/WeatherAnimation/WeatherType;)V

    .line 299
    :goto_0
    return-void

    .line 283
    :cond_0
    sget-object v0, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NULL:Lcn/nubia/WeatherAnimation/WeatherType;

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherTypeCurr:Lcn/nubia/WeatherAnimation/WeatherType;

    .line 285
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-direct {p0, v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->destroyWeather(Lcn/nubia/WeatherAnimation/Weather/Weather;)V

    .line 287
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 291
    :cond_1
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->setOffset(F)V

    .line 292
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-direct {p0, v0, p3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->createWeather(Lcn/nubia/WeatherAnimation/Weather/Weather;Lcn/nubia/WeatherAnimation/WeatherType;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 293
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->setOffset(F)V

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mNeedDrawFirst:Z

    .line 295
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 296
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 297
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 298
    invoke-static {}, Lcn/nubia/OpenGL/OpenGLUtil;->printTexturesId()V

    goto :goto_0
.end method

.method private switchWeatherEx(Lcn/nubia/WeatherAnimation/WeatherType;)V
    .locals 2
    .param p1, "type"    # Lcn/nubia/WeatherAnimation/WeatherType;

    .prologue
    .line 254
    sget-object v0, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_NULL:Lcn/nubia/WeatherAnimation/WeatherType;

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherTypeCurr:Lcn/nubia/WeatherAnimation/WeatherType;

    .line 255
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-direct {p0, v0, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->createWeather(Lcn/nubia/WeatherAnimation/Weather/Weather;Lcn/nubia/WeatherAnimation/WeatherType;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 256
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-direct {p0, v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->destroyWeather(Lcn/nubia/WeatherAnimation/Weather/Weather;)V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    .line 258
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/Weather/Weather;->getFPS()I

    move-result v0

    iput v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mFPS:I

    .line 259
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mBackground:Lcn/nubia/WeatherAnimation/Weather/Background;

    invoke-virtual {v0, p1}, Lcn/nubia/WeatherAnimation/Weather/Background;->setColor(Lcn/nubia/WeatherAnimation/WeatherType;)V

    .line 260
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mBackground:Lcn/nubia/WeatherAnimation/Weather/Background;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Background;->setFlashValue(F)V

    .line 261
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mNeedDrawFirst:Z

    .line 262
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 263
    invoke-static {}, Lcn/nubia/OpenGL/OpenGLUtil;->printTexturesId()V

    .line 264
    return-void
.end method


# virtual methods
.method public addNeedDelTextureId(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 367
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mNeedDelTextureId:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 368
    return-void
.end method

.method public isSurfaceCreated()Z
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mIsSurfaceCreated:Z

    return v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 207
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 224
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 225
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->destroy()V

    .line 226
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 127
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSynchronized:Ljava/lang/Object;

    monitor-enter v2

    .line 133
    const/16 v1, 0x4000

    :try_start_0
    invoke-static {v1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 134
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->openGLRunnable()V

    .line 136
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mDrawInfo:[F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v1, v3

    .line 137
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mDrawInfo:[F

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput v4, v1, v3

    .line 138
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mBackground:Lcn/nubia/WeatherAnimation/Weather/Background;

    invoke-virtual {v1, p1}, Lcn/nubia/WeatherAnimation/Weather/Background;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)[F

    move-result-object v0

    .line 139
    .local v0, "tempDrawInfo":[F
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mDrawInfo:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x0

    aget v5, v0, v5

    add-float/2addr v4, v5

    aput v4, v1, v3

    .line 140
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mDrawInfo:[F

    const/4 v3, 0x1

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v5, v0, v5

    add-float/2addr v4, v5

    aput v4, v1, v3

    .line 142
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherCurr:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v1, p1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)[F

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mDrawInfo:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x0

    aget v5, v0, v5

    add-float/2addr v4, v5

    aput v4, v1, v3

    .line 145
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mDrawInfo:[F

    const/4 v3, 0x1

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v5, v0, v5

    add-float/2addr v4, v5

    aput v4, v1, v3

    .line 148
    :cond_0
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherNext:Lcn/nubia/WeatherAnimation/Weather/Weather;

    invoke-virtual {v1, p1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)[F

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mDrawInfo:[F

    const/4 v3, 0x0

    aget v4, v1, v3

    const/4 v5, 0x0

    aget v5, v0, v5

    add-float/2addr v4, v5

    aput v4, v1, v3

    .line 151
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mDrawInfo:[F

    const/4 v3, 0x1

    aget v4, v1, v3

    const/4 v5, 0x1

    aget v5, v0, v5

    add-float/2addr v4, v5

    aput v4, v1, v3

    .line 127
    :cond_1
    monitor-exit v2

    .line 162
    return-void

    .line 127
    .end local v0    # "tempDrawInfo":[F
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mIsSurfaceCreated:Z

    .line 211
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 212
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSwitchValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 213
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->destroy()V

    .line 214
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mIsSurfaceCreated:Z

    .line 218
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mAnimationUpdateListener:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;

    invoke-virtual {v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->resetLastTime()V

    .line 219
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 220
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 3
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 166
    const-string v0, "WeatherAnimationRenderer"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onSurfaceChanged width = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSynchronized:Ljava/lang/Object;

    monitor-enter v1

    .line 169
    :try_start_0
    invoke-direct {p0, p2, p3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->setSize(II)V

    .line 170
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mBackground:Lcn/nubia/WeatherAnimation/Weather/Background;

    invoke-virtual {v0, p2, p3}, Lcn/nubia/WeatherAnimation/Weather/Background;->setSize(II)V

    .line 168
    monitor-exit v1

    .line 172
    return-void

    .line 168
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 176
    const-string v1, "WeatherAnimationRenderer"

    const-string v2, "onSurfaceCreated"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSynchronized:Ljava/lang/Object;

    monitor-enter v2

    .line 179
    :try_start_0
    invoke-static {}, Lcn/nubia/OpenGL/OpenGLUtil;->clearTexturesId()V

    .line 180
    const/16 v1, 0xbd0

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 181
    const/16 v1, 0xb71

    invoke-static {v1}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 182
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v1, v3, v4, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 183
    invoke-direct {p0, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->createShader(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 184
    const/16 v1, 0x438

    const/16 v3, 0x780

    invoke-direct {p0, v1, v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->setSize(II)V

    .line 185
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mBackground:Lcn/nubia/WeatherAnimation/Weather/Background;

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mProgram:[Lcn/nubia/OpenGL/ShaderProgram;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-virtual {v1, v3}, Lcn/nubia/WeatherAnimation/Weather/Background;->setShaderProgram(Lcn/nubia/OpenGL/ShaderProgram;)V

    .line 186
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mIsSurfaceCreated:Z

    .line 189
    new-instance v0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$1;

    invoke-direct {v0, p0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$1;-><init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)V

    .line 201
    .local v0, "runnable":Ljava/lang/Runnable;
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v0}, Landroid/opengl/GLSurfaceView;->post(Ljava/lang/Runnable;)Z

    .line 178
    monitor-exit v2

    .line 203
    return-void

    .line 178
    .end local v0    # "runnable":Ljava/lang/Runnable;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setBackgroundFlash(F)V
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 229
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mBackground:Lcn/nubia/WeatherAnimation/Weather/Background;

    invoke-virtual {v0, p1}, Lcn/nubia/WeatherAnimation/Weather/Background;->setFlashValue(F)V

    .line 230
    return-void
.end method

.method public switchWeather(Lcn/nubia/WeatherAnimation/WeatherType;)V
    .locals 2
    .param p1, "type"    # Lcn/nubia/WeatherAnimation/WeatherType;

    .prologue
    .line 243
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSynchronized:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->isSurfaceCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherTypeCurr:Lcn/nubia/WeatherAnimation/WeatherType;

    .line 246
    monitor-exit v1

    .line 251
    :goto_0
    return-void

    .line 249
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->switchWeatherEx(Lcn/nubia/WeatherAnimation/WeatherType;)V

    .line 243
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public switchWeatherAnimation(JLcn/nubia/WeatherAnimation/WeatherType;)V
    .locals 3
    .param p1, "duration"    # J
    .param p3, "type"    # Lcn/nubia/WeatherAnimation/WeatherType;

    .prologue
    .line 267
    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mSynchronized:Ljava/lang/Object;

    monitor-enter v1

    .line 268
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->isSurfaceCreated()Z

    move-result v0

    if-nez v0, :cond_0

    .line 269
    iput-object p3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->mWeatherTypeCurr:Lcn/nubia/WeatherAnimation/WeatherType;

    .line 270
    monitor-exit v1

    .line 275
    :goto_0
    return-void

    .line 273
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->switchWeatherAnimationEx(JLcn/nubia/WeatherAnimation/WeatherType;)V

    .line 267
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
