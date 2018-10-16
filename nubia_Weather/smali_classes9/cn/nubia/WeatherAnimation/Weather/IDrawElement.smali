.class public abstract Lcn/nubia/WeatherAnimation/Weather/IDrawElement;
.super Ljava/lang/Object;
.source "IDrawElement.java"


# instance fields
.field protected mDrawInfo:[F

.field protected mHeight:I

.field protected mHeightScale:F

.field protected mResources:Landroid/content/res/Resources;

.field protected mWidth:I

.field protected mWidthScale:F


# direct methods
.method public constructor <init>(IIFF)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "widthScale"    # F
    .param p4, "heightScale"    # F

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput p1, p0, Lcn/nubia/WeatherAnimation/Weather/IDrawElement;->mWidth:I

    .line 15
    iput p2, p0, Lcn/nubia/WeatherAnimation/Weather/IDrawElement;->mHeight:I

    .line 16
    iput p3, p0, Lcn/nubia/WeatherAnimation/Weather/IDrawElement;->mWidthScale:F

    .line 17
    iput p4, p0, Lcn/nubia/WeatherAnimation/Weather/IDrawElement;->mHeightScale:F

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/IDrawElement;->mDrawInfo:[F

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/IDrawElement;->mResources:Landroid/content/res/Resources;

    .line 20
    return-void
.end method


# virtual methods
.method public abstract create()V
.end method

.method public abstract destroy()V
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/Weather/IDrawElement;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public abstract onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)[F
.end method

.method public abstract onProcessFrame(F)V
.end method

.method public abstract openGLRunnable()Z
.end method

.method public setResources(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 33
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/Weather/IDrawElement;->mResources:Landroid/content/res/Resources;

    .line 34
    return-void
.end method
