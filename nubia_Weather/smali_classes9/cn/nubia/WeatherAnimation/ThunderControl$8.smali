.class Lcn/nubia/WeatherAnimation/ThunderControl$8;
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
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/ThunderControl$8;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 269
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 270
    .local v1, "value":F
    const/4 v2, 0x3

    new-array v0, v2, [F

    .line 271
    .local v0, "alphaLocation":[F
    aput v1, v0, v3

    .line 272
    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v4

    .line 274
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$8;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$9(Lcn/nubia/WeatherAnimation/ThunderControl;)[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v2

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$8;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$9(Lcn/nubia/WeatherAnimation/ThunderControl;)[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2, v0}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setAlphaLocation([F)V

    .line 278
    :cond_0
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$8;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$9(Lcn/nubia/WeatherAnimation/ThunderControl;)[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v2

    aget-object v2, v2, v4

    if-eqz v2, :cond_1

    .line 279
    iget-object v2, p0, Lcn/nubia/WeatherAnimation/ThunderControl$8;->this$0:Lcn/nubia/WeatherAnimation/ThunderControl;

    invoke-static {v2}, Lcn/nubia/WeatherAnimation/ThunderControl;->access$9(Lcn/nubia/WeatherAnimation/ThunderControl;)[Lcn/nubia/WeatherAnimation/Weather/Thunder;

    move-result-object v2

    aget-object v2, v2, v4

    invoke-virtual {v2, v0}, Lcn/nubia/WeatherAnimation/Weather/Thunder;->setAlphaLocation([F)V

    .line 281
    :cond_1
    return-void
.end method
