.class Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;
.super Ljava/lang/Object;
.source "WeatherAnimationRenderer.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchAnimationUpdateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;


# direct methods
.method private constructor <init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)V
    .locals 0

    .prologue
    .line 499
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;)V
    .locals 0

    .prologue
    .line 499
    invoke-direct {p0, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;-><init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 502
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 503
    .local v2, "value":F
    sget-object v0, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_DEFAULT:Lcn/nubia/WeatherAnimation/WeatherType;

    .line 504
    .local v0, "type1":Lcn/nubia/WeatherAnimation/WeatherType;
    sget-object v1, Lcn/nubia/WeatherAnimation/WeatherType;->WEATHER_DAY_DEFAULT:Lcn/nubia/WeatherAnimation/WeatherType;

    .line 506
    .local v1, "type2":Lcn/nubia/WeatherAnimation/WeatherType;
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$8(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 507
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$8(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/WeatherAnimation/Weather/Weather;->setOffset(F)V

    .line 508
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$8(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/WeatherAnimation/Weather/Weather;->getType()Lcn/nubia/WeatherAnimation/WeatherType;

    move-result-object v0

    .line 511
    :cond_0
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$10(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 512
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$10(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, v2

    invoke-virtual {v3, v4}, Lcn/nubia/WeatherAnimation/Weather/Weather;->setOffset(F)V

    .line 513
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$10(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/WeatherAnimation/Weather/Weather;->getType()Lcn/nubia/WeatherAnimation/WeatherType;

    move-result-object v1

    .line 516
    :cond_1
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$14(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Background;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lcn/nubia/WeatherAnimation/Weather/Background;->setColor(Lcn/nubia/WeatherAnimation/WeatherType;Lcn/nubia/WeatherAnimation/WeatherType;F)V

    .line 517
    return-void
.end method
