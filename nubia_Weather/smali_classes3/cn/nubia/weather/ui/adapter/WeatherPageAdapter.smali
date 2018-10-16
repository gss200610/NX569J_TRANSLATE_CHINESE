.class public Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "WeatherPageAdapter.java"

# interfaces
.implements Lcn/nubia/weather/ui/adapter/IconPagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;,
        Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;,
        Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;
    }
.end annotation


# static fields
.field private static final MESSAGE_EMPTY_UPDATE:I = 0x8000002

.field private static final MESSAGE_UPDATE_ADAPTER:I = 0x8000000

.field private static final MESSAGE_UPDATE_INFO:I = 0x8000001

.field public static final TAG:Ljava/lang/String; = "WeatherPageAdapter"


# instance fields
.field private ICONS:[I

.field private mChildCount:I

.field private mCityWeathers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataObserver:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;

.field private mFragmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/weather/ui/view/WeatherPageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsPressButton:Z

.field private mLock:Ljava/lang/Object;

.field private mOldCityWeathers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWeatherMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "weatherMainHandler"    # Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;
    .param p4, "isPressButton"    # Z

    .prologue
    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mOldCityWeathers:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mLock:Ljava/lang/Object;

    .line 43
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->ICONS:[I

    .line 47
    new-instance v0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;-><init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    .line 48
    iput-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mWeatherMainHandler:Landroid/os/Handler;

    .line 51
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mIsPressButton:Z

    .line 53
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    .line 59
    iput-boolean p4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mIsPressButton:Z

    .line 60
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mContext:Landroid/content/Context;

    .line 61
    new-instance v0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;-><init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mDataObserver:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;

    .line 64
    invoke-virtual {p0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->setData()V

    .line 65
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mDataObserver:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/data/DataCenter;->addObserver(Ljava/util/Observer;)V

    .line 66
    iput-object p3, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mWeatherMainHandler:Landroid/os/Handler;

    .line 68
    return-void

    .line 43
    :array_0
    .array-data 4
        0x7f020097
        0x7f020099
    .end array-data
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    .prologue
    .line 33
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mWeatherMainHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 212
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 213
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 214
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 215
    .local v0, "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->removeHandler()V

    .line 216
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    .end local v0    # "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 219
    return-void
.end method

.method public doUpdate(Lcn/nubia/weather/data/DataCenter$ObserverObject;)V
    .locals 10
    .param p1, "o"    # Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .prologue
    const-wide/16 v8, 0x3e8

    const v7, 0x8000002

    const/high16 v6, 0x8000000

    .line 328
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_0

    .line 329
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 331
    .local v0, "currentIndex":I
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    .line 332
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 376
    .end local v0    # "currentIndex":I
    :cond_0
    :goto_0
    return-void

    .line 335
    .restart local v0    # "currentIndex":I
    :cond_1
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/weather/model/WeatherModel;

    .line 336
    .local v3, "model":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 339
    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmAreaID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 340
    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 341
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 342
    .local v1, "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    if-eqz v1, :cond_0

    .line 345
    new-instance v4, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;

    invoke-direct {v4, p0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;-><init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)V

    invoke-virtual {v1, v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setAnimationListener(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;)V

    .line 356
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 357
    .local v2, "message":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 358
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 359
    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->stopAnimation()Z

    move-result v4

    if-nez v4, :cond_0

    .line 360
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 361
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 363
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 364
    iput v6, v2, Landroid/os/Message;->what:I

    .line 365
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 368
    .end local v1    # "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    .end local v2    # "message":Landroid/os/Message;
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 369
    .restart local v2    # "message":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 370
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 371
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 373
    :cond_4
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 243
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 244
    :try_start_0
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    .line 248
    :goto_0
    return v0

    .line 247
    :cond_0
    monitor-exit v1

    .line 248
    const/4 v0, 0x0

    goto :goto_0

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIconResId(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    .line 403
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    .line 404
    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "isLocationOpen"

    .line 403
    invoke-static {v1, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 405
    .local v0, "isLocation":Z
    if-eqz v0, :cond_0

    .line 406
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->ICONS:[I

    aget v1, v1, v3

    .line 408
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->ICONS:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 170
    :try_start_0
    iget-object v3, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 171
    monitor-exit v4

    .line 204
    :goto_0
    return-object v1

    .line 173
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 174
    :cond_1
    monitor-exit v4

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 176
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/model/WeatherModel;

    .line 180
    .local v2, "weather":Lcn/nubia/weather/model/WeatherModel;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 184
    .local v0, "key":Ljava/lang/Integer;
    new-instance v1, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-direct {v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;-><init>()V

    .line 185
    .local v1, "mFragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V

    .line 203
    iget-object v3, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getItemById(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 151
    iget-object v3, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 153
    :try_start_0
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 154
    monitor-exit v3

    .line 162
    :goto_0
    return-object v0

    .line 157
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 158
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 159
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 160
    .local v0, "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    monitor-exit v3

    goto :goto_0

    .line 163
    .end local v0    # "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    .end local v1    # "key":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 162
    .restart local v1    # "key":Ljava/lang/Integer;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 260
    check-cast p1, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getWeatherModel()Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    .line 261
    .local v1, "m":Lcn/nubia/weather/model/WeatherModel;
    const/4 v3, -0x1

    .line 262
    .local v3, "oldIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mOldCityWeathers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 263
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mOldCityWeathers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/WeatherModel;

    .line 264
    .local v4, "w":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 265
    move v3, v0

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 268
    .end local v4    # "w":Lcn/nubia/weather/model/WeatherModel;
    :cond_1
    const/4 v2, -0x1

    .line 269
    .local v2, "newIndex":I
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 270
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/WeatherModel;

    .line 271
    .restart local v4    # "w":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 272
    move v2, v0

    .line 269
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 275
    .end local v4    # "w":Lcn/nubia/weather/model/WeatherModel;
    :cond_3
    if-eq v3, v2, :cond_4

    .line 277
    const/4 v5, -0x2

    .line 280
    :goto_2
    return v5

    :cond_4
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public getModel(I)Lcn/nubia/weather/model/WeatherModel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 284
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 285
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 287
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 225
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mChildCount:I

    .line 254
    invoke-super {p0}, Landroid/support/v4/app/FragmentStatePagerAdapter;->notifyDataSetChanged()V

    .line 255
    return-void
.end method

.method public onDestory()V
    .locals 4

    .prologue
    .line 140
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 141
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 142
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 143
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 144
    .local v0, "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->removeHandler()V

    goto :goto_0

    .line 146
    .end local v0    # "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    :cond_0
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 148
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method public popFragmentById(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 422
    .local v0, "fm":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    if-eqz v0, :cond_0

    .line 423
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setFragmentAtTop()V

    .line 424
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->resetHourlyForecast()V

    .line 426
    :cond_0
    return-void
.end method

.method public removeObserver()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mDataObserver:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/data/DataCenter;->deleteObserver(Ljava/util/Observer;)V

    .line 136
    return-void
.end method

.method public setData()V
    .locals 9

    .prologue
    .line 71
    iget-object v7, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 73
    :try_start_0
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    .line 74
    invoke-virtual {v6}, Lcn/nubia/weather/data/DataCenter;->getWeatherInfoList()Ljava/util/List;

    move-result-object v5

    .line 75
    .local v5, "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    iget-boolean v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mIsPressButton:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    .line 76
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    .line 77
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ge v6, v8, :cond_4

    .line 79
    :cond_0
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 80
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 82
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 132
    .end local v5    # "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :goto_0
    return-void

    .line 84
    .restart local v5    # "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :cond_2
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/WeatherModel;

    .line 85
    .local v4, "m":Lcn/nubia/weather/model/WeatherModel;
    iget-object v8, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 128
    .end local v4    # "m":Lcn/nubia/weather/model/WeatherModel;
    .end local v5    # "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "WeatherPageAdapter"

    const-string v8, "WeatherPageAdapter Exception"

    invoke-static {v6, v8, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 131
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 87
    .restart local v5    # "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 91
    :cond_4
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mOldCityWeathers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 92
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/WeatherModel;

    .line 93
    .restart local v4    # "m":Lcn/nubia/weather/model/WeatherModel;
    iget-object v8, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mOldCityWeathers:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 95
    .end local v4    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_5
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 96
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/WeatherModel;

    .line 97
    .restart local v4    # "m":Lcn/nubia/weather/model/WeatherModel;
    iget-object v8, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 101
    .end local v4    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->notifyDataSetChanged()V

    .line 103
    const-string v6, "setdata notifyDataSetChanged END"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 107
    :try_start_5
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 108
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 109
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 110
    .local v3, "k":Ljava/lang/Integer;
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 111
    .local v1, "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1, v6}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V

    .line 112
    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->refresh()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 125
    .end local v1    # "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "k":Ljava/lang/Integer;
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v6

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "mWeatherViewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 413
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 414
    return-void
.end method

.method public stopRefreshAnime(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 429
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 430
    .local v0, "fm":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    if-eqz v0, :cond_0

    .line 431
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->stopAnimation()Z

    .line 433
    :cond_0
    return-void
.end method
