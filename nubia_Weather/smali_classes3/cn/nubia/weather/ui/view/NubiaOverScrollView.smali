.class public Lcn/nubia/weather/ui/view/NubiaOverScrollView;
.super Landroid/widget/FrameLayout;
.source "NubiaOverScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;
    }
.end annotation


# static fields
.field private static final INVALID_POINTER:I = -0x1

.field private static final MAX_OVER_SCROLL_DISTANCE:I = 0xc8

.field private static final REFRESH_DISTANCE:F = 60.0f

.field public static final STATE_IDLE:I = -0x1

.field public static final STATE_SCROLLING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NubiaOverScrollView"


# instance fields
.field private mActivePointerId:I

.field private mBackAnimator:Landroid/animation/ValueAnimator;

.field private mClipBoundsStartY:I

.field private mClipRect:Landroid/graphics/Rect;

.field private mDensity:F

.field private mIsBeingDragged:Z

.field private mLastMotionY:I

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

.field private mRefreshAnimator:Landroid/animation/ValueAnimator;

.field private mScroller:Landroid/widget/OverScroller;

.field private mState:I

.field private mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v1, -0x1

    .line 60
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 35
    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 47
    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    .line 61
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->init(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    .prologue
    .line 23
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    return-object v0
.end method

.method private backAnimation()V
    .locals 8

    .prologue
    const-wide/16 v6, 0xc8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 526
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->cancelSecondRefreshAnimation()V

    .line 527
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->cancelBackAnimation()V

    .line 528
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v0

    .line 529
    .local v0, "scrollY":I
    if-gtz v0, :cond_0

    .line 530
    new-array v1, v5, [I

    aput v0, v1, v3

    aput v3, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    .line 531
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 532
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 533
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcn/nubia/weather/ui/view/NubiaOverScrollView$5;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$5;-><init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 544
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 547
    :cond_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 548
    new-array v1, v5, [I

    aput v0, v1, v3

    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v2

    aput v2, v1, v4

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    .line 549
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 550
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 551
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcn/nubia/weather/ui/view/NubiaOverScrollView$6;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$6;-><init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 562
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 565
    :cond_1
    return-void
.end method

.method private cancelBackAnimation()V
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 522
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mBackAnimator:Landroid/animation/ValueAnimator;

    .line 523
    return-void
.end method

.method private firstBackRefreshAnimation()V
    .locals 7

    .prologue
    const/high16 v6, 0x3e800000    # 0.25f

    .line 450
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v1

    .line 451
    .local v1, "scrollY":I
    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v3, 0x1

    const/high16 v4, 0x42700000    # 60.0f

    iget v5, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mDensity:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    neg-int v4, v4

    aput v4, v2, v3

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 452
    .local v0, "animator":Landroid/animation/ValueAnimator;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 453
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v6, v3, v6, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 454
    new-instance v2, Lcn/nubia/weather/ui/view/NubiaOverScrollView$1;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$1;-><init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 465
    new-instance v2, Lcn/nubia/weather/ui/view/NubiaOverScrollView$2;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$2;-><init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 473
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 474
    return-void
.end method

.method private getScrollRange()I
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 362
    const/4 v1, 0x0

    .line 363
    .local v1, "scrollRange":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 364
    invoke-virtual {p0, v5}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 365
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 366
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    sub-int/2addr v2, v3

    .line 365
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 368
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return v1
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 66
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mTouchSlop:F

    .line 67
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mMinimumVelocity:I

    .line 68
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mMaximumVelocity:I

    .line 69
    new-instance v1, Landroid/widget/OverScroller;

    invoke-direct {v1, p1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    .line 70
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mClipRect:Landroid/graphics/Rect;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mDensity:F

    .line 73
    return-void
.end method

.method private initOrResetVelocityTracker()V
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 348
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0
.end method

.method private initVelocityTrackerIfNotExists()V
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 335
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 337
    :cond_0
    return-void
.end method

.method private isInScrollRange(I)Z
    .locals 1
    .param p1, "scrollY"    # I

    .prologue
    .line 316
    if-lez p1, :cond_0

    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private moveBy(I)V
    .locals 4
    .param p1, "deltaY"    # I

    .prologue
    .line 405
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v1

    add-int/2addr v1, p1

    int-to-float v1, v1

    const/high16 v2, -0x3cb80000    # -200.0f

    iget v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mDensity:F

    mul-float/2addr v2, v3

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    .line 406
    const/4 p1, 0x0

    .line 409
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v0

    .line 410
    .local v0, "scrollY":I
    invoke-direct {p0, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->isInScrollRange(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 411
    const/4 v1, 0x0

    invoke-virtual {p0, v1, p1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    .line 416
    :goto_0
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    if-eqz v1, :cond_1

    .line 417
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    invoke-interface {v1, v2}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;->onDragScrolled(I)V

    .line 419
    :cond_1
    return-void

    .line 413
    :cond_2
    invoke-direct {p0, v0, p1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->overScrollBy(II)V

    goto :goto_0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 320
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const v4, 0xff00

    and-int/2addr v3, v4

    shr-int/lit8 v2, v3, 0x8

    .line 321
    .local v2, "pointerIndex":I
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 322
    .local v1, "pointerId":I
    iget v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    if-ne v1, v3, :cond_0

    .line 324
    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 325
    .local v0, "newPointerIndex":I
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    iput v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    .line 326
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 327
    iget-object v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 328
    iget-object v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 331
    .end local v0    # "newPointerIndex":I
    :cond_0
    return-void

    .line 324
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private overScrollBy(II)V
    .locals 6
    .param p1, "scrollY"    # I
    .param p2, "deltaY"    # I

    .prologue
    const/high16 v5, 0x3fe00000    # 1.75f

    const/high16 v4, 0x3fc00000    # 1.5f

    const/high16 v3, -0x3d900000    # -60.0f

    const/4 v2, 0x0

    .line 423
    if-gtz p1, :cond_3

    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mDensity:F

    mul-float/2addr v1, v3

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    .line 424
    if-gtz p2, :cond_2

    .line 425
    int-to-float v0, p2

    div-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    .line 439
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 441
    if-gtz p2, :cond_5

    .line 442
    int-to-float v0, p2

    mul-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    .line 447
    :cond_1
    :goto_1
    return-void

    .line 427
    :cond_2
    int-to-float v0, p2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    goto :goto_0

    .line 430
    :cond_3
    int-to-float v0, p1

    iget v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mDensity:F

    mul-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 432
    if-gtz p2, :cond_4

    .line 433
    int-to-float v0, p2

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    goto :goto_0

    .line 435
    :cond_4
    int-to-float v0, p2

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    goto :goto_0

    .line 444
    :cond_5
    int-to-float v0, p2

    div-float/2addr v0, v5

    float-to-int v0, v0

    invoke-virtual {p0, v2, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollBy(II)V

    goto :goto_1
.end method

.method private recycleVelocityTracker()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 344
    :cond_0
    return-void
.end method

.method private requestDisallowInterceptTouchEvent()V
    .locals 2

    .prologue
    .line 355
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 356
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_0

    .line 357
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 359
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelSecondRefreshAnimation()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 479
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    .line 480
    return-void
.end method

.method public computeScroll()V
    .locals 3

    .prologue
    .line 384
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 385
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v0

    .line 386
    .local v0, "y":I
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollTo(II)V

    .line 387
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->postInvalidateOnAnimation()V

    .line 388
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    invoke-interface {v1, v2}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;->onFlingScrolled(I)V

    .line 392
    .end local v0    # "y":I
    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->computeScroll()V

    .line 393
    return-void
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 588
    iget v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    return v0
.end method

.method protected measureChild(Landroid/view/View;II)V
    .locals 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "parentHeightMeasureSpec"    # I

    .prologue
    const/4 v5, 0x0

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 106
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingLeft()I

    move-result v3

    .line 107
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 106
    invoke-static {p2, v3, v4}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 109
    .local v1, "childWidthMeasureSpec":I
    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 111
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 112
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 118
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 121
    .local v2, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 120
    invoke-static {p2, v3, v4}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildMeasureSpec(III)I

    move-result v1

    .line 123
    .local v1, "childWidthMeasureSpec":I
    iget v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 125
    .local v0, "childHeightMeasureSpec":I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 126
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v13, -0x1

    const/4 v3, 0x0

    .line 138
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 139
    .local v7, "action":I
    const/4 v1, 0x2

    if-ne v7, v1, :cond_0

    iget-boolean v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    if-eqz v1, :cond_0

    .line 204
    :goto_0
    return v0

    .line 143
    :cond_0
    and-int/lit16 v1, v7, 0xff

    packed-switch v1, :pswitch_data_0

    .line 204
    :cond_1
    :goto_1
    :pswitch_0
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    goto :goto_0

    .line 146
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v11, v1

    .line 147
    .local v11, "y":I
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 148
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->recycleVelocityTracker()V

    .line 149
    iput v11, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    .line 150
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 151
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->initOrResetVelocityTracker()V

    .line 152
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 153
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v1}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    move v3, v0

    :cond_2
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 154
    iput v13, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    goto :goto_1

    .line 159
    .end local v11    # "y":I
    :pswitch_2
    iget v8, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 160
    .local v8, "activePointerId":I
    if-eq v8, v13, :cond_1

    .line 164
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v10

    .line 165
    .local v10, "pointerIndex":I
    if-ne v10, v13, :cond_3

    .line 166
    const-string v0, "NubiaOverScrollView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid pointerId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in onInterceptTouchEvent"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 171
    :cond_3
    invoke-virtual {p1, v10}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v11, v1

    .line 172
    .restart local v11    # "y":I
    iget v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v12

    .line 173
    .local v12, "yDiff":I
    int-to-float v1, v12

    iget v2, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mTouchSlop:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    .line 174
    iput v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    .line 175
    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 176
    iput v11, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    .line 177
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->initVelocityTrackerIfNotExists()V

    .line 178
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 179
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->requestDisallowInterceptTouchEvent()V

    goto :goto_1

    .line 186
    .end local v8    # "activePointerId":I
    .end local v10    # "pointerIndex":I
    .end local v11    # "y":I
    .end local v12    # "yDiff":I
    :pswitch_3
    iput-boolean v3, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 187
    iput v13, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 188
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v6

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 189
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->postInvalidateOnAnimation()V

    .line 191
    :cond_4
    iput v13, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    goto/16 :goto_1

    .line 194
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v9

    .line 195
    .local v9, "index":I
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    .line 196
    invoke-virtual {p1, v9}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    goto/16 :goto_1

    .line 200
    .end local v9    # "index":I
    :pswitch_5
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 143
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 130
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 131
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mClipRect:Landroid/graphics/Rect;

    iget v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mClipBoundsStartY:I

    add-int/2addr v1, p3

    invoke-virtual {v0, p2, v1, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 132
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 133
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 78
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 79
    .local v4, "heightMode":I
    if-nez v4, :cond_1

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildCount()I

    move-result v6

    if-lez v6, :cond_0

    .line 84
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 85
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getMeasuredHeight()I

    move-result v3

    .line 86
    .local v3, "height":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 87
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    .line 88
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingLeft()I

    move-result v6

    .line 89
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingRight()I

    move-result v7

    add-int/2addr v6, v7

    iget v7, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 88
    invoke-static {p1, v6, v7}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildMeasureSpec(III)I

    move-result v2

    .line 90
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    .line 91
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    .line 92
    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 94
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method protected onScrollChanged(IIII)V
    .locals 1
    .param p1, "l"    # I
    .param p2, "t"    # I
    .param p3, "oldl"    # I
    .param p4, "oldt"    # I

    .prologue
    .line 397
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    .line 398
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    invoke-interface {v0, p2}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;->onScrollChanged(I)V

    .line 401
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 20
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 210
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->initVelocityTrackerIfNotExists()V

    .line 211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 212
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v14

    .line 214
    .local v14, "action":I
    and-int/lit16 v2, v14, 0xff

    packed-switch v2, :pswitch_data_0

    .line 312
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v2, 0x1

    :goto_1
    return v2

    .line 218
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 219
    const/4 v2, 0x0

    goto :goto_1

    .line 221
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_2

    .line 222
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->requestDisallowInterceptTouchEvent()V

    .line 223
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {v2}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 225
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    .line 226
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 227
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    goto :goto_0

    .line 221
    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    .line 232
    :pswitch_2
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v15

    .line 233
    .local v15, "activePointerIndex":I
    const/4 v2, -0x1

    if-ne v15, v2, :cond_4

    .line 234
    const-string v2, "NubiaOverScrollView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid pointerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in onTouchEvent"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 238
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v0, v2

    move/from16 v19, v0

    .line 239
    .local v19, "y":I
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    sub-int v16, v2, v19

    .line 241
    .local v16, "deltaY":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    if-nez v2, :cond_5

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mTouchSlop:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    .line 242
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->requestDisallowInterceptTouchEvent()V

    .line 243
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 244
    if-lez v16, :cond_6

    .line 245
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mTouchSlop:F

    sub-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    .line 249
    :goto_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    .line 252
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    .line 253
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->moveBy(I)V

    .line 254
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    goto/16 :goto_0

    .line 247
    :cond_6
    move/from16 v0, v16

    int-to-float v2, v0

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mTouchSlop:F

    add-float/2addr v2, v3

    float-to-int v0, v2

    move/from16 v16, v0

    goto :goto_3

    .line 259
    .end local v15    # "activePointerIndex":I
    .end local v16    # "deltaY":I
    .end local v19    # "y":I
    :pswitch_3
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    .line 260
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v18, v0

    .line 263
    .local v18, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v2, 0x3e8

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mMaximumVelocity:I

    int-to-float v3, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 264
    move-object/from16 v0, p0

    iget v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    float-to-int v2, v2

    neg-int v6, v2

    .line 266
    .local v6, "initialVelocity":I
    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    move-object/from16 v0, p0

    iget v3, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mMinimumVelocity:I

    if-le v2, v3, :cond_7

    .line 267
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->isInScrollRange(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 268
    move-object/from16 v0, p0

    iget-object v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v4

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 269
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v10

    const/4 v11, 0x0

    const/16 v12, 0x96

    .line 268
    invoke-virtual/range {v2 .. v12}, Landroid/widget/OverScroller;->fling(IIIIIIIIII)V

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->postInvalidateOnAnimation()V

    .line 282
    :goto_4
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 283
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 284
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 274
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, -0x3d900000    # -60.0f

    move-object/from16 v0, p0

    iget v4, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mDensity:F

    mul-float/2addr v3, v4

    cmpg-float v2, v2, v3

    if-gez v2, :cond_8

    .line 275
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->firstBackRefreshAnimation()V

    goto :goto_4

    .line 278
    :cond_8
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->backAnimation()V

    goto :goto_4

    .line 290
    .end local v6    # "initialVelocity":I
    .end local v18    # "velocityTracker":Landroid/view/VelocityTracker;
    :pswitch_4
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mState:I

    .line 291
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    if-eqz v2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getChildCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 292
    move-object/from16 v0, p0

    iget-object v7, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollX()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollRange()I

    move-result v13

    invoke-virtual/range {v7 .. v13}, Landroid/widget/OverScroller;->springBack(IIIIII)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 293
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->postInvalidateOnAnimation()V

    .line 295
    :cond_9
    const/4 v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    .line 296
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mIsBeingDragged:Z

    .line 297
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->recycleVelocityTracker()V

    goto/16 :goto_0

    .line 302
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v17

    .line 303
    .local v17, "index":I
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mLastMotionY:I

    .line 304
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mActivePointerId:I

    goto/16 :goto_0

    .line 309
    .end local v17    # "index":I
    :pswitch_6
    invoke-direct/range {p0 .. p1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_0

    .line 214
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public secondRefreshBackAnimation()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/high16 v5, 0x3e800000    # 0.25f

    .line 483
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->cancelBackAnimation()V

    .line 484
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->cancelSecondRefreshAnimation()V

    .line 485
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v0

    .line 486
    .local v0, "scrollY":I
    if-gtz v0, :cond_1

    .line 487
    const/4 v1, 0x2

    new-array v1, v1, [I

    aput v0, v1, v3

    const/4 v2, 0x1

    aput v3, v1, v2

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    .line 488
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 489
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3dcccccd    # 0.1f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v5, v3, v5, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 490
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcn/nubia/weather/ui/view/NubiaOverScrollView$3;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$3;-><init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 502
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    new-instance v2, Lcn/nubia/weather/ui/view/NubiaOverScrollView$4;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$4;-><init>(Lcn/nubia/weather/ui/view/NubiaOverScrollView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 510
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mRefreshAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 517
    :cond_0
    :goto_0
    return-void

    .line 513
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    if-eqz v1, :cond_0

    .line 514
    iget-object v1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    invoke-interface {v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;->backAnimationEnd()V

    goto :goto_0
.end method

.method public setAtTop()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 592
    invoke-virtual {p0, v0, v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollTo(II)V

    .line 593
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v1

    invoke-interface {v0, v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;->onFlingScrolled(I)V

    .line 596
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->invalidate()V

    .line 597
    return-void
.end method

.method public setClipBoundsStartY(I)V
    .locals 0
    .param p1, "clipBoundsStartY"    # I

    .prologue
    .line 584
    iput p1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mClipBoundsStartY:I

    .line 585
    return-void
.end method

.method public setOnScrollChangedListener(Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    .prologue
    .line 568
    iput-object p1, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mOnScrollChangedListener:Lcn/nubia/weather/ui/view/NubiaOverScrollView$OnScrollChangedListener;

    .line 569
    return-void
.end method

.method public smoothScrollBySlow(III)V
    .locals 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->mScroller:Landroid/widget/OverScroller;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/OverScroller;->startScroll(IIIII)V

    .line 379
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->invalidate()V

    .line 380
    return-void
.end method

.method public smoothScrollToSlow(III)V
    .locals 3
    .param p1, "fx"    # I
    .param p2, "fy"    # I
    .param p3, "duration"    # I

    .prologue
    .line 372
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollX()I

    move-result v2

    sub-int v0, p1, v2

    .line 373
    .local v0, "dx":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v2

    sub-int v1, p2, v2

    .line 374
    .local v1, "dy":I
    invoke-virtual {p0, v0, v1, p3}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->smoothScrollBySlow(III)V

    .line 375
    return-void
.end method
