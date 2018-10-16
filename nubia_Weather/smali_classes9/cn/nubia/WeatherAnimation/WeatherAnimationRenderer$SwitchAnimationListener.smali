.class Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WeatherAnimationRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchAnimationListener"
.end annotation


# instance fields
.field private mIsCancel:Z

.field final synthetic this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;


# direct methods
.method private constructor <init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;)V
    .locals 0

    .prologue
    .line 451
    invoke-direct {p0, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;-><init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)V

    return-void
.end method

.method private onAnimationEndEx()V
    .locals 2

    .prologue
    .line 483
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$8(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$9(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Lcn/nubia/WeatherAnimation/Weather/Weather;)V

    .line 484
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$10(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$11(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Lcn/nubia/WeatherAnimation/Weather/Weather;)V

    .line 485
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$12(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Lcn/nubia/WeatherAnimation/Weather/Weather;)V

    .line 487
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$8(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v0

    if-nez v0, :cond_0

    .line 488
    const-string v0, "WeatherAnimationRenderer"

    const-string v1, "SwitchAnimationListener onAnimationEndEx (null == mWeatherCurr)"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :goto_0
    return-void

    .line 492
    :cond_0
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$8(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->setOffset(F)V

    .line 493
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$8(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->getFPS()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$13(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;I)V

    .line 494
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$14(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Background;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$8(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Weather;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/WeatherAnimation/Weather/Weather;->getType()Lcn/nubia/WeatherAnimation/WeatherType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Background;->setColor(Lcn/nubia/WeatherAnimation/WeatherType;)V

    .line 495
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$14(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Lcn/nubia/WeatherAnimation/Weather/Background;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/WeatherAnimation/Weather/Background;->setFlashValue(F)V

    goto :goto_0
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 457
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$6(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Z)V

    .line 458
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->mIsCancel:Z

    .line 459
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 464
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$6(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Z)V

    .line 466
    iget-boolean v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->mIsCancel:Z

    if-eqz v0, :cond_0

    .line 473
    :goto_0
    return-void

    .line 470
    :cond_0
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$7(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 471
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->onAnimationEndEx()V

    .line 470
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 478
    iget-object v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$6(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Z)V

    .line 479
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$SwitchAnimationListener;->mIsCancel:Z

    .line 480
    return-void
.end method
