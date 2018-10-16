.class public Lcn/nubia/weather/ui/activity/MainActivity;
.super Lcn/nubia/weather/ui/activity/BaseFragmentActivity;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/activity/MainActivity$NaviBarObserver;,
        Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;
    }
.end annotation


# static fields
.field public static final MESSAGE_UPDATE_INDICATOR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WeatherMainActivity"

.field private static final WEATHER_ANIM_NEED_CHANGE_TIME:I = 0xc8


# instance fields
.field private listener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

.field private mActionBar:Landroid/widget/TextView;

.field private mAreaID:Ljava/lang/String;

.field private mCityIndexIndicator:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

.field private mCityListButton:Landroid/widget/ImageView;

.field private mCityName:Ljava/lang/String;

.field private mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

.field private mDataSetObserver:Landroid/database/DataSetObserver;

.field private mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

.field private mGLMaskImageView:Landroid/widget/ImageView;

.field private mGLSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mHandler:Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;

.field private mHasInitWeatherAnimView:Z

.field private mIsForeground:Z

.field private mIsFromAdd:Z

.field private mIsNaviBarEnable:I

.field private mIsNight:Z

.field private mIsRefreshNeeded:Z

.field private mIsUpdateNeeded:Z

.field private mIsUpgradeNeeded:Z

.field private mIsWeatherAnimActive:Z

.field private mNaviBarObserver:Landroid/database/ContentObserver;

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

.field private mResumeTime:J

.field private mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

.field private mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

.field private mWeatherTemper:Ljava/lang/Integer;

.field private mWeatherType:I

.field private mWeatherViewPager:Landroid/support/v4/view/ViewPager;

.field private oldPosition:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v1, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;-><init>()V

    .line 81
    iput v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->oldPosition:I

    .line 84
    new-instance v0, Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;

    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mHandler:Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;

    .line 85
    iput v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherType:I

    .line 86
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherTemper:Ljava/lang/Integer;

    .line 87
    iput-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCityName:Ljava/lang/String;

    .line 88
    iput-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mAreaID:Ljava/lang/String;

    .line 89
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsNight:Z

    .line 92
    iput-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 93
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsWeatherAnimActive:Z

    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mResumeTime:J

    .line 96
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mHasInitWeatherAnimView:Z

    .line 100
    iput-boolean v4, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsUpdateNeeded:Z

    .line 101
    iput-boolean v4, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsUpgradeNeeded:Z

    .line 102
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsRefreshNeeded:Z

    .line 103
    iput v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsNaviBarEnable:I

    .line 104
    iput-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mNaviBarObserver:Landroid/database/ContentObserver;

    .line 105
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsForeground:Z

    .line 106
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsFromAdd:Z

    .line 207
    new-instance v0, Lcn/nubia/weather/ui/activity/MainActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/activity/MainActivity$1;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->listener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

    .line 669
    new-instance v0, Lcn/nubia/weather/ui/activity/MainActivity$3;

    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/activity/MainActivity$3;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    .line 825
    return-void
.end method

.method private AnimationEffect()V
    .locals 2

    .prologue
    .line 245
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mActionBar:Landroid/widget/TextView;

    .line 246
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mActionBar:Landroid/widget/TextView;

    const v1, 0x7f090047

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 249
    return-void
.end method

.method private ImmersionStatusBar()V
    .locals 5

    .prologue
    const/high16 v4, 0x8000000

    const/high16 v3, -0x80000000

    .line 252
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 253
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 254
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 256
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 258
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 260
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/weather/ui/activity/MainActivity;)Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/activity/MainActivity;)Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCityIndexIndicator:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/activity/MainActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mGLMaskImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/activity/MainActivity;)Landroid/opengl/GLSurfaceView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/activity/MainActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->refreshBackground()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/weather/ui/activity/MainActivity;)Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 68
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mHandler:Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/weather/ui/activity/MainActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 68
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->showAlarmContent()V

    return-void
.end method

.method private checkCTA()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 687
    iget-object v4, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    invoke-virtual {v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 725
    :cond_0
    :goto_0
    return-void

    .line 690
    :cond_1
    const/4 v1, 0x0

    .line 691
    .local v1, "disable":I
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta()Z

    move-result v4

    if-nez v4, :cond_2

    .line 692
    const/4 v1, 0x1

    .line 695
    :cond_2
    if-nez v1, :cond_0

    const-string v4, "isCTA"

    invoke-static {p0, v4, v6}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 697
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900da

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 698
    .local v2, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900db

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 699
    .local v3, "title":Ljava/lang/String;
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 700
    .local v0, "builder":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    invoke-virtual {v0, v6}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 701
    const v4, 0x7f030020

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setView(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 702
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 703
    const/high16 v4, 0x1040000

    invoke-virtual {p0, v4}, Lcn/nubia/weather/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/nubia/weather/ui/activity/MainActivity$4;

    invoke-direct {v5, p0}, Lcn/nubia/weather/ui/activity/MainActivity$4;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;)V

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 711
    const v4, 0x104000a

    invoke-virtual {p0, v4}, Lcn/nubia/weather/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/nubia/weather/ui/activity/MainActivity$5;

    invoke-direct {v5, p0}, Lcn/nubia/weather/ui/activity/MainActivity$5;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;)V

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 720
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    .line 721
    iget-object v4, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    invoke-virtual {v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V

    goto :goto_0
.end method

.method private initActivity()V
    .locals 4

    .prologue
    .line 222
    const-string v2, "weathermain initActivity"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 224
    const/4 v2, 0x0

    :try_start_0
    sput-object v2, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentActivity:Landroid/app/Activity;

    .line 225
    const-string v2, "isLocationOpen"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 226
    .local v1, "isLocationOpen":Z
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 235
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 237
    :goto_0
    return-void

    .line 229
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/data/DataCenter;->getSize()I

    move-result v2

    if-nez v2, :cond_1

    if-nez v1, :cond_1

    .line 230
    sput-object p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentActivity:Landroid/app/Activity;

    .line 231
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .end local v1    # "isLocationOpen":Z
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method

.method private initBackground()V
    .locals 4

    .prologue
    .line 580
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v1, :cond_0

    .line 581
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getCurrentWeatherType()Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v0

    .line 582
    .local v0, "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    const-string v2, "WeatherMainActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Init"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherType;->name()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 583
    invoke-virtual {v1}, Lcom/bluestareffects/app/weather/api/WeatherType;->name()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsWeatherAnimActive:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 582
    invoke-static {v2, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    iget-boolean v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsWeatherAnimActive:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    if-eq v0, v1, :cond_0

    .line 586
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v1, v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->setWeatherType(Lcom/bluestareffects/app/weather/api/WeatherType;)V

    .line 587
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mHasInitWeatherAnimView:Z

    .line 588
    iput-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 591
    .end local v0    # "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    :cond_0
    return-void

    .line 582
    .restart local v0    # "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    :cond_1
    const-string v1, ""

    goto :goto_0

    .line 583
    :cond_2
    const-string v1, ""

    goto :goto_1
.end method

.method private initData()V
    .locals 1

    .prologue
    .line 240
    new-instance v0, Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-direct {v0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    .line 241
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/presenter/OverAllControl;->addEmptyLocModel()V

    .line 242
    return-void
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 263
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->ImmersionStatusBar()V

    .line 264
    const v2, 0x7f0f006b

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 265
    const v2, 0x7f0f0049

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCityListButton:Landroid/widget/ImageView;

    .line 266
    const v2, 0x7f0f0048

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 267
    .local v1, "mLogoButton":Landroid/widget/ImageView;
    const v2, 0x7f0f006e

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    .line 268
    const v2, 0x7f0f0047

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCityIndexIndicator:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    .line 269
    const v2, 0x7f0f006c

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/opengl/GLSurfaceView;

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 270
    const/4 v0, 0x0

    .line 271
    .local v0, "isPressBotton":Z
    const-string v2, "android.intent.action.opencity"

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    const/4 v0, 0x1

    .line 276
    :cond_0
    :goto_0
    new-instance v2, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mHandler:Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;

    invoke-direct {v2, p0, v3, v4, v0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;-><init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;Z)V

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    .line 278
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 279
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 280
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 281
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 282
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCityIndexIndicator:Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/viewpagerIndicator/IconPageIndicator;->setViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 283
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCityListButton:Landroid/widget/ImageView;

    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 284
    const v2, 0x7f0f006f

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mGLMaskImageView:Landroid/widget/ImageView;

    .line 285
    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->AnimationEffect()V

    .line 287
    return-void

    .line 273
    :cond_1
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->isInited()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 274
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private initWeatherAnimView()V
    .locals 2

    .prologue
    .line 194
    const-string v0, "weathermain initWeatherAnimView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 196
    :try_start_0
    new-instance v0, Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-direct {v0, p0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 197
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mGLMaskImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 198
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mGLSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onCreate(Landroid/opengl/GLSurfaceView;)V

    .line 199
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->listener:Lcom/bluestareffects/app/weather/api/WeatherCreateListener;

    invoke-virtual {v0, v1}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->setWeatherListener(Lcom/bluestareffects/app/weather/api/WeatherCreateListener;)V

    .line 200
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/app/WeatherApplication;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/app/WeatherApplication;->setWeatherAnimation(Lcom/bluestareffects/app/weather/api/WeatherAnimation;)V

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mHasInitWeatherAnimView:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 205
    return-void

    .line 203
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method private refreshBackground()V
    .locals 8

    .prologue
    .line 551
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v3, :cond_1

    .line 552
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getCurrentWeatherType()Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v2

    .line 553
    .local v2, "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    const-string v4, "WeatherMainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Refresh "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/bluestareffects/app/weather/api/WeatherType;->name()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 554
    invoke-virtual {v3}, Lcom/bluestareffects/app/weather/api/WeatherType;->name()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsWeatherAnimActive:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 553
    invoke-static {v4, v3}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    iget-boolean v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsWeatherAnimActive:Z

    if-eqz v3, :cond_1

    .line 557
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    if-eq v2, v3, :cond_1

    .line 558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mResumeTime:J

    sub-long v0, v4, v6

    .line 565
    .local v0, "refreshIntervalTime":J
    const-wide/16 v4, 0xc8

    cmp-long v3, v0, v4

    if-ltz v3, :cond_0

    iget-boolean v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mHasInitWeatherAnimView:Z

    if-eqz v3, :cond_4

    .line 567
    :cond_0
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v3, v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->switchWeather(Lcom/bluestareffects/app/weather/api/WeatherType;)V

    .line 568
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mHasInitWeatherAnimView:Z

    .line 573
    :goto_2
    iput-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    .line 577
    .end local v0    # "refreshIntervalTime":J
    .end local v2    # "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    :cond_1
    return-void

    .line 553
    .restart local v2    # "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    :cond_2
    const-string v3, ""

    goto :goto_0

    .line 554
    :cond_3
    const-string v3, ""

    goto :goto_1

    .line 570
    .restart local v0    # "refreshIntervalTime":J
    :cond_4
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v3, v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->switchWeatherAnimation(Lcom/bluestareffects/app/weather/api/WeatherType;)V

    .line 571
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->resetWeatherAlpha(F)V

    goto :goto_2
.end method

.method private showAlarmContent()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 420
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 421
    const/4 v1, -0x1

    iput v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->oldPosition:I

    .line 422
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 423
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 424
    .local v0, "notiFragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 425
    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .end local v0    # "notiFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->showNotificationDetail()V

    .line 428
    :cond_0
    return-void
.end method

.method private startCityListActivity()V
    .locals 4

    .prologue
    .line 431
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 432
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v2}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 433
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getModel(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    .line 434
    .local v1, "weather":Lcn/nubia/weather/model/WeatherModel;
    const-string v2, "timeZone"

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 435
    const-string v2, "weathertype"

    iget v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherType:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 437
    .end local v1    # "weather":Lcn/nubia/weather/model/WeatherModel;
    :cond_0
    sput-object p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentActivity:Landroid/app/Activity;

    .line 438
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 439
    return-void
.end method


# virtual methods
.method public adjustLayout(I)V
    .locals 11
    .param p1, "isEnableNaviBar"    # I

    .prologue
    const/4 v10, 0x0

    .line 788
    const/4 v5, 0x0

    .line 789
    .local v5, "viewPagerPadding":I
    const v6, 0x7f0f0045

    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/activity/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    .line 791
    .local v2, "naviBar":Landroid/widget/RelativeLayout;
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 792
    .local v3, "para":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b016f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v0, v6

    .line 794
    .local v0, "barHeight":I
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "navigation_bar_height"

    const-string v8, "dimen"

    const-string v9, "android"

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 795
    .local v4, "resourceId":I
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    float-to-int v0, v6

    .line 799
    .end local v4    # "resourceId":I
    :goto_0
    const/4 v6, 0x1

    if-ne p1, v6, :cond_0

    .line 800
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 801
    move v5, v0

    .line 808
    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 809
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6, v10, v10, v10, v5}, Landroid/support/v4/view/ViewPager;->setPadding(IIII)V

    .line 810
    return-void

    .line 796
    :catch_0
    move-exception v1

    .line 797
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 803
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    iput v10, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 805
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public adjustLayoutByNaviBarStatus()V
    .locals 4

    .prologue
    .line 841
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_keys_navigationbar"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 843
    .local v0, "isEnableNaviBar":I
    iget v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsNaviBarEnable:I

    if-eq v1, v0, :cond_0

    .line 844
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/MainActivity;->adjustLayout(I)V

    .line 845
    iput v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsNaviBarEnable:I

    .line 847
    :cond_0
    return-void
.end method

.method public dealWithIntent(Z)V
    .locals 9
    .param p1, "hasOnCreated"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 850
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 851
    .local v1, "intent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 852
    .local v2, "intentAction":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 910
    :cond_0
    :goto_0
    return-void

    .line 855
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 857
    if-nez p1, :cond_2

    .line 858
    invoke-static {v2}, Lcn/nubia/weather/utils/ReYunUtils;->onWeatherOpen(Ljava/lang/String;)V

    .line 860
    :cond_2
    const-string v5, "WIDGET_ACTION"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 861
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v5}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v5

    if-lez v5, :cond_3

    .line 862
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 864
    :cond_3
    invoke-static {}, Lcn/nubia/weather/utils/ReYunUtils;->onWidgetClickEvent()V

    .line 904
    :cond_4
    :goto_1
    if-eqz v2, :cond_0

    const-string v5, "android.intent.action.opencity"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    .line 905
    invoke-virtual {v5}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->isShowing()Z

    move-result v5

    if-nez v5, :cond_0

    .line 907
    :cond_5
    if-eqz p1, :cond_0

    .line 908
    iput-boolean v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsRefreshNeeded:Z

    goto :goto_0

    .line 865
    :cond_6
    const-string v5, "ALARM_ACTION"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 866
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v5

    new-instance v6, Lcn/nubia/weather/ui/activity/MainActivity$8;

    invoke-direct {v6, p0}, Lcn/nubia/weather/ui/activity/MainActivity$8;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;)V

    invoke-virtual {v5, v6}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    goto :goto_1

    .line 875
    :cond_7
    const-string v5, "android.intent.action.opencity"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    if-eqz p1, :cond_4

    .line 876
    :cond_8
    const-string v5, "CITY_INDEX"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 879
    .local v3, "mCurrentItem":I
    const v5, 0x7fffffff

    if-ne v3, v5, :cond_9

    .line 880
    iput-boolean v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsFromAdd:Z

    .line 881
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v6, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v6}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 882
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v6, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    .line 883
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 884
    .local v4, "preFragment":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_4

    .line 885
    check-cast v4, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .end local v4    # "preFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->scrollToTop()V

    goto :goto_1

    .line 887
    :cond_9
    if-ltz v3, :cond_4

    .line 888
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v5, v3, v7}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 889
    const-string v5, "android.intent.action.opencity"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 892
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v6, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    .line 893
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v4

    .line 894
    .restart local v4    # "preFragment":Landroid/support/v4/app/Fragment;
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v6, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    .line 895
    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    .line 894
    invoke-virtual {v5, v6}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 896
    .local v0, "afterFragment":Landroid/support/v4/app/Fragment;
    if-eqz v4, :cond_a

    .line 897
    check-cast v4, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .end local v4    # "preFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->scrollToTop()V

    .line 899
    :cond_a
    if-eqz v0, :cond_4

    .line 900
    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .end local v0    # "afterFragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->scrollToTop()V

    goto/16 :goto_1
.end method

.method public doUpdate()V
    .locals 8

    .prologue
    .line 160
    iget-boolean v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsUpdateNeeded:Z

    if-eqz v5, :cond_1

    .line 161
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsUpdateNeeded:Z

    .line 162
    const-string v5, "main_activity_init_time_long"

    const-wide/16 v6, 0x0

    invoke-static {p0, v5, v6, v7}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v2

    .line 164
    .local v2, "lastInitLong":J
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 165
    .local v4, "lastInitTime":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 166
    .local v0, "currentTime":Ljava/util/Date;
    invoke-static {v4, v0}, Lcn/nubia/weather/utils/TimeUtils;->isSameHour(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 167
    const-string v5, "main_activity_init_time_long"

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 167
    invoke-static {p0, v5, v6, v7}, Lcn/nubia/weather/utils/PreferenceUtils;->setSettingLong(Landroid/content/Context;Ljava/lang/String;J)V

    .line 169
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 170
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "android.intent.action.NUBIA.WEATHER.UPDATE"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 172
    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/MainActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 174
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/presenter/OverAllControl;->checkUpgrade()V

    .line 176
    .end local v0    # "currentTime":Ljava/util/Date;
    .end local v2    # "lastInitLong":J
    .end local v4    # "lastInitTime":Ljava/util/Date;
    :cond_1
    return-void
.end method

.method public doUpgrade()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 179
    iget-boolean v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsUpgradeNeeded:Z

    if-eqz v1, :cond_1

    .line 180
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/presenter/OverAllControl;->appStartUpdate()V

    .line 182
    iput-boolean v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsUpgradeNeeded:Z

    .line 191
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-boolean v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsRefreshNeeded:Z

    if-eqz v1, :cond_0

    .line 184
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getModel(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    .line 187
    .local v0, "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 186
    invoke-static {v1}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v1

    sget-object v2, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 188
    invoke-virtual {v1, v0, v2}, Lcn/nubia/weather/presenter/OverAllControl;->refreshWeatherData(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)Z

    .line 189
    iput-boolean v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsRefreshNeeded:Z

    goto :goto_0
.end method

.method public getCurrentWeatherType()Lcom/bluestareffects/app/weather/api/WeatherType;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 447
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v6, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v6}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getModel(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v2

    .line 448
    .local v2, "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-static {}, Lcn/nubia/weather/utils/CalendarUtil;->isPhoneTimeNight()Z

    move-result v1

    .line 449
    .local v1, "isNightNow":Z
    if-eqz v2, :cond_0

    .line 450
    invoke-static {v2}, Lcn/nubia/weather/utils/TimeUtils;->isDataUpToDate(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 451
    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/weather/utils/CalendarUtil;->isTimeNightByTimezone(Ljava/lang/String;)Z

    move-result v1

    .line 452
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 453
    .local v0, "currentDate":Ljava/util/Date;
    invoke-virtual {v0, v9}, Ljava/util/Date;->setMinutes(I)V

    .line 454
    invoke-virtual {v0, v9}, Ljava/util/Date;->setSeconds(I)V

    .line 455
    invoke-static {v0, v2}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v3

    .line 456
    .local v3, "weather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherTemper:Ljava/lang/Integer;

    .line 457
    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCityName:Ljava/lang/String;

    .line 458
    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mAreaID:Ljava/lang/String;

    .line 459
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 460
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherType:I

    .line 471
    .end local v0    # "currentDate":Ljava/util/Date;
    .end local v3    # "weather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_0
    :goto_0
    iget v5, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherType:I

    invoke-static {v5, v1}, Lcn/nubia/weather/utils/WeatherStateUtils;->getAnimationWeatherType(IZ)Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v4

    .line 473
    .local v4, "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    return-object v4

    .line 462
    .end local v4    # "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    .restart local v0    # "currentDate":Ljava/util/Date;
    .restart local v3    # "weather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_1
    iput v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherType:I

    goto :goto_0

    .line 465
    .end local v0    # "currentDate":Ljava/util/Date;
    .end local v3    # "weather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_2
    iput v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherType:I

    .line 466
    iput-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherTemper:Ljava/lang/Integer;

    .line 467
    iput-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCityName:Ljava/lang/String;

    .line 468
    iput-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mAreaID:Ljava/lang/String;

    goto :goto_0
.end method

.method public isFirstLaunch(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    .line 316
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 317
    .local v1, "sharedPref":Landroid/content/SharedPreferences;
    const-string v2, "isFirstLaunch"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 319
    .local v0, "isFirstLaunch":Z
    if-eqz v0, :cond_0

    .line 320
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "isFirstLaunch"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 322
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 443
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 444
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 595
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 612
    :cond_0
    :goto_0
    return-void

    .line 597
    :pswitch_0
    const/4 v2, -0x1

    iput v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->oldPosition:I

    .line 598
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->startCityListActivity()V

    goto :goto_0

    .line 601
    :pswitch_1
    new-instance v0, Lcn/nubia/weather/utils/LinkUtils;

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mAreaID:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcn/nubia/weather/utils/LinkUtils;-><init>(Ljava/lang/String;)V

    .line 602
    .local v0, "linkHelper":Lcn/nubia/weather/utils/LinkUtils;
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    .line 603
    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    .line 602
    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getModel(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    .line 604
    .local v1, "weather":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 605
    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v2, "LOGO"

    invoke-static {v2}, Lcn/nubia/weather/utils/ReYunUtils;->onLaunchBrowser(Ljava/lang/String;)V

    goto :goto_0

    .line 595
    :pswitch_data_0
    .packed-switch 0x7f0f0048
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 136
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/utils/ReYunUtils;->initReYun(Landroid/content/Context;)V

    .line 137
    const-string v0, "Activity oncreate"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 139
    :try_start_0
    invoke-super {p0, p1}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 141
    const v0, 0x7f030019

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/MainActivity;->setContentView(I)V

    .line 142
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->initView()V

    .line 143
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->initWeatherAnimView()V

    .line 144
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->initData()V

    .line 147
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/MainActivity;->dealWithIntent(Z)V

    .line 149
    const-string v0, "WeatherMainActivity"

    const-string v1, "WeatherMainActivity onCreate"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 153
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->registerContentObserver()V

    .line 154
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->adjustLayoutByNaviBarStatus()V

    .line 156
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->oldPosition:I

    .line 157
    return-void

    .line 151
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 291
    const-string v0, "WeatherMainActivity"

    const-string v1, "WeatherMainActivity onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onDestroy()V

    .line 293
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onDestroy()V

    .line 295
    iput-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    .line 297
    :cond_0
    sput-object v2, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentActivity:Landroid/app/Activity;

    .line 298
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->removeObserver()V

    .line 300
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->onDestory()V

    .line 302
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->unregisterContentObserver()V

    .line 303
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 304
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->dismiss()V

    .line 306
    :cond_2
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-virtual {v0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->hideDialog()V

    .line 309
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/app/WeatherApplication;

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->clearWeatherAnimation()V

    .line 310
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/MainActivity;->isFirstLaunch(Landroid/content/Context;)V

    .line 311
    invoke-static {}, Lcn/nubia/weather/utils/ReYunUtils;->unbindReYun()V

    .line 312
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    .line 615
    const-string v1, "WeatherMainActivity"

    const-string v2, "onNewIntent"

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-super {p0, p1}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 617
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/activity/MainActivity;->setIntent(Landroid/content/Intent;)V

    .line 618
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 619
    const/4 v0, 0x0

    .line 620
    .local v0, "disable":I
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta()Z

    move-result v1

    if-nez v1, :cond_0

    .line 621
    const/4 v0, 0x1

    .line 623
    :cond_0
    if-eq v0, v3, :cond_1

    const-string v1, "isCTA"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 625
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->dismiss()V

    .line 628
    .end local v0    # "disable":I
    :cond_2
    invoke-virtual {p0, v3}, Lcn/nubia/weather/ui/activity/MainActivity;->dealWithIntent(Z)V

    .line 629
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    iput v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->oldPosition:I

    .line 635
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 531
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 532
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->oldPosition:I

    .line 543
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 548
    return-void
.end method

.method public onPageSelected(I)V
    .locals 11
    .param p1, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 479
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getCurrentWeatherType()Lcom/bluestareffects/app/weather/api/WeatherType;

    move-result-object v6

    .line 480
    .local v6, "weatherType":Lcom/bluestareffects/app/weather/api/WeatherType;
    iget-object v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mCurrentWeatherType:Lcom/bluestareffects/app/weather/api/WeatherType;

    if-ne v6, v8, :cond_4

    const/4 v1, 0x1

    .line 482
    .local v1, "isTheSameWeatherType":Z
    :goto_0
    const-string v8, "WeatherMainActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " onPageSelected "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isTheSameWeatherType = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->refreshBackground()V

    .line 494
    iget-object v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v8}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v4

    .line 497
    .local v4, "newPosition":I
    iget v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->oldPosition:I

    if-ltz v8, :cond_0

    iget v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->oldPosition:I

    iget-object v9, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v9}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_0

    iget v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->oldPosition:I

    if-eq v4, v8, :cond_0

    .line 499
    iget-object v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget v9, p0, Lcn/nubia/weather/ui/activity/MainActivity;->oldPosition:I

    invoke-virtual {v8, v9}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->popFragmentById(I)V

    .line 500
    iget-object v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget v9, p0, Lcn/nubia/weather/ui/activity/MainActivity;->oldPosition:I

    invoke-virtual {v8, v9}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->stopRefreshAnime(I)V

    .line 501
    const/4 v8, -0x1

    iput v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->oldPosition:I

    .line 504
    :cond_0
    iget-object v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v8, :cond_1

    if-eqz v1, :cond_1

    .line 505
    iget-object v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-virtual {v8, v9}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->setUpTranslationAlpha(F)V

    .line 507
    :cond_1
    iget-object v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v9, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v9}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v9

    invoke-virtual {v8, v9}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getModel(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v2

    .line 508
    .local v2, "model":Lcn/nubia/weather/model/WeatherModel;
    sget-object v5, Lcn/nubia/weather/app/Constant$OperationType;->PASSIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 509
    .local v5, "type":Lcn/nubia/weather/app/Constant$OperationType;
    iget-boolean v8, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsFromAdd:Z

    if-eqz v8, :cond_2

    .line 510
    sget-object v5, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 511
    iput-boolean v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsFromAdd:Z

    .line 514
    :cond_2
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v7

    .line 513
    invoke-static {v7}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v7

    .line 515
    invoke-virtual {v7, v2, v5}, Lcn/nubia/weather/presenter/OverAllControl;->refreshWeatherData(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)Z

    move-result v3

    .line 516
    .local v3, "needNotify":Z
    if-eqz v3, :cond_3

    .line 517
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    .line 518
    invoke-virtual {v7, v4}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 519
    .local v0, "currentFragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    .line 520
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lcn/nubia/weather/model/WeatherModel;->setmRefreshTime(J)V

    .line 521
    invoke-virtual {v0, v2}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V

    .line 525
    .end local v0    # "currentFragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    :cond_3
    const-string v7, "Forward_non_location"

    invoke-static {p0, v7}, Lcn/nubia/weather/umeng/UmengUtils;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 526
    return-void

    .end local v1    # "isTheSameWeatherType":Z
    .end local v2    # "model":Lcn/nubia/weather/model/WeatherModel;
    .end local v3    # "needNotify":Z
    .end local v4    # "newPosition":I
    .end local v5    # "type":Lcn/nubia/weather/app/Constant$OperationType;
    :cond_4
    move v1, v7

    .line 480
    goto/16 :goto_0
.end method

.method protected onPause()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 326
    const-string v0, "WeatherMainActivity"

    const-string v1, "WeatherMainActivity onPause"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onPause()V

    .line 328
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v0, :cond_0

    .line 329
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsWeatherAnimActive:Z

    .line 330
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v0}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onPause()V

    .line 332
    :cond_0
    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsForeground:Z

    .line 333
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 914
    packed-switch p1, :pswitch_data_0

    .line 934
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 937
    :cond_0
    :goto_0
    return-void

    .line 916
    :pswitch_0
    const/4 v0, 0x1

    .line 917
    .local v0, "requestResult":Z
    if-eqz p3, :cond_1

    array-length v2, p3

    if-nez v2, :cond_2

    .line 918
    :cond_1
    const/4 v0, 0x0

    .line 920
    :cond_2
    array-length v3, p3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_3

    aget v1, p3, v2

    .line 921
    .local v1, "result":I
    if-eqz v1, :cond_4

    .line 922
    const/4 v0, 0x0

    .line 923
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->finish()V

    .line 928
    .end local v1    # "result":I
    :cond_3
    if-eqz v0, :cond_0

    .line 929
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->doUpgrade()V

    .line 930
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->doUpdate()V

    goto :goto_0

    .line 920
    .restart local v1    # "result":I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 914
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 337
    const-string v2, "Activity onresume"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 339
    :try_start_0
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->isInited()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 340
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v2}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->setData()V

    .line 344
    :goto_0
    const-string v2, "WeatherMainActivity"

    const-string v3, "WeatherMainActivity onResume"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 347
    .local v0, "fragment":Landroid/support/v4/app/Fragment;
    if-eqz v0, :cond_0

    .line 348
    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .end local v0    # "fragment":Landroid/support/v4/app/Fragment;
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->resetAnimAlpha()V

    .line 351
    :cond_0
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseFragmentActivity;->onResume()V

    .line 352
    const-string v2, "Activity mWeatherAnimation onresume"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :try_start_1
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    if-eqz v2, :cond_1

    .line 355
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsWeatherAnimActive:Z

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mResumeTime:J

    .line 357
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherAnimation:Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    invoke-virtual {v2}, Lcom/bluestareffects/app/weather/api/WeatherAnimation;->onResume()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 360
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 362
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->initActivity()V

    .line 367
    const-string v2, "Activity animaRefresh"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 369
    :try_start_3
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->refreshBackground()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 371
    :try_start_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 394
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "android.permission.READ_PHONE_STATE"

    aput-object v5, v3, v4

    const/16 v4, 0xc

    invoke-virtual {v2, p0, v3, v4}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->isPerssionGranted(Landroid/content/Context;[Ljava/lang/String;I)Z

    move-result v1

    .line 401
    .local v1, "grant":Z
    if-eqz v1, :cond_2

    .line 402
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lcn/nubia/weather/ui/activity/MainActivity$2;

    invoke-direct {v3, p0}, Lcn/nubia/weather/ui/activity/MainActivity$2;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;)V

    invoke-virtual {v2, v3}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 414
    :cond_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 416
    iput-boolean v6, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsForeground:Z

    .line 417
    return-void

    .line 342
    .end local v1    # "grant":Z
    :cond_3
    :try_start_5
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcn/nubia/weather/app/WeatherApplication;->setInited(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 414
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2

    .line 360
    :catchall_1
    move-exception v2

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2

    .line 371
    :catchall_2
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 785
    return-void
.end method

.method public openNetOrGps(Z)V
    .locals 6
    .param p1, "isNetOpened"    # Z

    .prologue
    const/4 v5, 0x1

    .line 728
    iget-boolean v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mIsForeground:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    invoke-virtual {v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 732
    :cond_1
    const/4 v2, 0x0

    .line 733
    .local v2, "title":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 734
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 742
    :goto_1
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 743
    .local v0, "builder":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 744
    invoke-virtual {v0, v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 745
    const/high16 v3, 0x1040000

    invoke-virtual {p0, v3}, Lcn/nubia/weather/ui/activity/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/nubia/weather/ui/activity/MainActivity$6;

    invoke-direct {v4, p0}, Lcn/nubia/weather/ui/activity/MainActivity$6;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;)V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 752
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09010d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcn/nubia/weather/ui/activity/MainActivity$7;

    invoke-direct {v4, p0, p1}, Lcn/nubia/weather/ui/activity/MainActivity$7;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;Z)V

    invoke-virtual {v0, v3, v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 758
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    .line 759
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 760
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mDialog:Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    invoke-virtual {v3}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V

    goto :goto_0

    .line 736
    .end local v0    # "builder":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    :cond_2
    const-string v3, "isLocationOpen"

    invoke-static {p0, v3, v5}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 737
    .local v1, "isLocationOpen":Z
    if-eqz v1, :cond_0

    .line 740
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0900dd

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method public registerContentObserver()V
    .locals 4

    .prologue
    .line 813
    new-instance v0, Lcn/nubia/weather/ui/activity/MainActivity$NaviBarObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/activity/MainActivity$NaviBarObserver;-><init>(Lcn/nubia/weather/ui/activity/MainActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mNaviBarObserver:Landroid/database/ContentObserver;

    .line 814
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_keys_navigationbar"

    .line 815
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mNaviBarObserver:Landroid/database/ContentObserver;

    .line 814
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 817
    return-void
.end method

.method public setMobileNetOrGps(Z)V
    .locals 3
    .param p1, "isNetOpened"    # Z

    .prologue
    .line 766
    if-eqz p1, :cond_0

    .line 767
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 779
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 780
    return-void

    .line 769
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Lcn/nubia/weather/model/DeviceInfo;

    invoke-direct {v0}, Lcn/nubia/weather/model/DeviceInfo;-><init>()V

    .line 770
    .local v0, "deviceInfo":Lcn/nubia/weather/model/DeviceInfo;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/weather/model/DeviceInfo;->hasSimCard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 771
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.sim.SIM_SUB_INFO_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 772
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 773
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 775
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 776
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method protected switchPageByIntent()V
    .locals 5

    .prologue
    .line 638
    const-string v3, "weathermain switchPageByIntent"

    invoke-static {v3}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 641
    :try_start_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 642
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    .line 643
    .local v1, "intentAction":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 665
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 667
    :goto_0
    return-void

    .line 647
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 648
    const-string v3, "android.intent.action.opencity"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq v1, v3, :cond_1

    .line 665
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 651
    :cond_1
    :try_start_2
    const-string v3, "CITY_INDEX"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 654
    .local v2, "mCurrentItem":I
    const v3, 0x7fffffff

    if-ne v2, v3, :cond_4

    .line 655
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v4, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v4}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 659
    :cond_2
    :goto_1
    const-string v3, "WIDGET_ACTION"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 660
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mViewpagerAdapter:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_3

    .line 661
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 665
    :cond_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 656
    :cond_4
    if-ltz v2, :cond_2

    .line 657
    :try_start_3
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mWeatherViewPager:Landroid/support/v4/view/ViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 665
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "intentAction":Ljava/lang/String;
    .end local v2    # "mCurrentItem":I
    :catchall_0
    move-exception v3

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v3
.end method

.method public unregisterContentObserver()V
    .locals 2

    .prologue
    .line 820
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mNaviBarObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/MainActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/MainActivity;->mNaviBarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 823
    :cond_0
    return-void
.end method
