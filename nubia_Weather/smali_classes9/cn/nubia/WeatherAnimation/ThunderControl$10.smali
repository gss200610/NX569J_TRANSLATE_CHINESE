.class Lcn/nubia/WeatherAnimation/ThunderControl$10;
.super Ljava/lang/Object;
.source "ThunderControl.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/WeatherAnimation/ThunderControl;->setValueAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/WeatherAnimation/ThunderControl;


# direct methods
.method constructor <init>(Lcn/nubia/WeatherAnimation/ThunderControl;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/ThunderControl$10;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 313
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 314
    .local v1, "value":F
    const/4 v2, 0x3

    new-array v0, v2, [F

    .line 316
    .local v0, "alphaLocation":[F
    const/4 v2, 0x0

    aput v1, v0, v2

    .line 317
    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v0, v2

    .line 319
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$10;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$20(Lcn/nubia/WeatherAnimation/ThunderControl;)Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 320
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$10;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$20(Lcn/nubia/WeatherAnimation/ThunderControl;)Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setAlphaLocation([F)V

    .line 322
    :cond_0
    return-void
.end method
