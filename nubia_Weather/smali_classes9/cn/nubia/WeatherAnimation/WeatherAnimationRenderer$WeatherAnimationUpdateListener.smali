.class Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;
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
    name = "WeatherAnimationUpdateListener"
.end annotation


# instance fields
.field private mCounter:I

.field private mLastTime:J

.field final synthetic this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;


# direct methods
.method private constructor <init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)V
    .locals 2

    .prologue
    .line 402
    iput-object p1, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->mCounter:I

    .line 404
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->mLastTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;)V
    .locals 0

    .prologue
    .line 402
    invoke-direct {p0, p1}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;-><init>(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 11
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/4 v10, -0x1

    .line 414
    const/4 v2, 0x0

    .line 417
    .local v2, "needRefresh":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 419
    .local v0, "currTime":J
    iget v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->mCounter:I

    iget-object v6, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v6}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$0(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)I

    move-result v6

    rem-int/2addr v3, v6

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$0(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)I

    move-result v3

    if-ne v10, v3, :cond_1

    .line 420
    :cond_0
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$1(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$2(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 422
    :cond_1
    const-wide/16 v6, -0x1

    iget-wide v8, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->mLastTime:J

    cmp-long v3, v6, v8

    if-nez v3, :cond_6

    .line 423
    const-wide/16 v4, 0x0

    .line 428
    .local v4, "time":J
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-gez v3, :cond_7

    .line 429
    const-wide/16 v4, 0x0

    .line 434
    :cond_2
    :goto_1
    iput-wide v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->mLastTime:J

    .line 435
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$3(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;Z)V

    .line 436
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    long-to-float v6, v4

    const/high16 v7, 0x447a0000    # 1000.0f

    div-float/2addr v6, v7

    invoke-static {v3, v6}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$4(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;F)Z

    move-result v2

    .line 439
    .end local v4    # "time":J
    :cond_3
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$0(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)I

    move-result v3

    if-ne v10, v3, :cond_4

    .line 440
    iput-wide v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->mLastTime:J

    .line 443
    :cond_4
    if-eqz v2, :cond_5

    .line 444
    iget-object v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->this$0:Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;

    invoke-static {v3}, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;->access$5(Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer;)Landroid/opengl/GLSurfaceView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 447
    :cond_5
    iget v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->mCounter:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->mCounter:I

    .line 448
    return-void

    .line 425
    :cond_6
    iget-wide v6, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->mLastTime:J

    sub-long v4, v0, v6

    .restart local v4    # "time":J
    goto :goto_0

    .line 430
    :cond_7
    long-to-float v3, v4

    const v6, 0x43055555

    cmpl-float v3, v3, v6

    if-lez v3, :cond_2

    .line 431
    const-wide/16 v4, 0x85

    goto :goto_1
.end method

.method public resetLastTime()V
    .locals 2

    .prologue
    .line 407
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcn/nubia/WeatherAnimation/WeatherAnimationRenderer$WeatherAnimationUpdateListener;->mLastTime:J

    .line 408
    return-void
.end method
