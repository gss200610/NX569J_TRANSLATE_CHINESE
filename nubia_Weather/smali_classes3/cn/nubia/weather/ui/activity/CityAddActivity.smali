.class public Lcn/nubia/weather/ui/activity/CityAddActivity;
.super Lcn/nubia/weather/ui/activity/BaseActivity;
.source "CityAddActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;,
        Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;,
        Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;
    }
.end annotation


# static fields
.field private static final MSG_ALLCITY_DATA_INIT_COMPLETE:I = 0x2

.field private static final MSG_HOTCITY_DATA_INIT_COMPLETE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CityAddActivity"


# instance fields
.field private mAllCityInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/CityModel;",
            ">;"
        }
    .end annotation
.end field

.field private mBackLayout:Landroid/widget/LinearLayout;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mHandler:Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;

.field private mHotCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;

.field private mHotCityGrid:Landroid/widget/GridView;

.field private mHotCityInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/CityModel;",
            ">;"
        }
    .end annotation
.end field

.field private mHotCityText:Landroid/widget/TextView;

.field private mIsOneHand:Z

.field private mNaviBar:Landroid/view/View;

.field private mNetErrorView:Landroid/widget/LinearLayout;

.field private mNetSettingIv:Landroid/widget/ImageView;

.field private mNetSettingTv:Landroid/widget/TextView;

.field private mParentLayout:Landroid/widget/LinearLayout;

.field private mPersisterner:Lcn/nubia/weather/persistent/IPersistenter;

.field private mProgressView:Landroid/widget/LinearLayout;

.field private mQueryCityList:Landroid/widget/ListView;

.field private mReloadIv:Landroid/widget/ImageView;

.field private mReloadTv:Landroid/widget/TextView;

.field private mSearchCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

.field private mSearchEditText:Landroid/widget/EditText;

.field private mSearchEmptyImg:Landroid/widget/ImageView;

.field private mSearchEmptyText:Landroid/widget/TextView;

.field private mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

.field private mSetNetFlag:Z

.field private msearchCancelText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 64
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;-><init>()V

    .line 94
    new-instance v0, Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;Lcn/nubia/weather/ui/activity/CityAddActivity$1;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHandler:Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;

    .line 636
    return-void
.end method

.method private ImmersionStatusBar()V
    .locals 5

    .prologue
    const/high16 v4, 0x8000000

    const/high16 v3, -0x80000000

    .line 286
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 287
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 288
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 290
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 292
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 294
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/activity/CityAddActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityInfos:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$102(Lcn/nubia/weather/ui/activity/CityAddActivity;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 64
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityInfos:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/activity/CityAddActivity;)Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHandler:Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/activity/CityAddActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/activity/CityAddActivity;)Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/ui/activity/CityAddActivity;)Landroid/widget/GridView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    return-object v0
.end method

.method private checkCTA()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 833
    const/4 v1, 0x0

    .line 834
    .local v1, "disable":I
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/app/WeatherApplication;->isSupportCta()Z

    move-result v5

    if-nez v5, :cond_0

    .line 835
    const/4 v1, 0x1

    .line 838
    :cond_0
    if-nez v1, :cond_1

    const-string v5, "isCTA"

    invoke-static {p0, v5, v7}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_1

    .line 840
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900da

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 841
    .local v3, "msg":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0900db

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 843
    .local v4, "title":Ljava/lang/String;
    new-instance v0, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 844
    .local v0, "builder":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    invoke-virtual {v0, v7}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 845
    const v5, 0x7f030020

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setView(I)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 846
    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 847
    const/high16 v5, 0x1040000

    invoke-virtual {p0, v5}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/weather/ui/activity/CityAddActivity$4;

    invoke-direct {v6, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$4;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V

    invoke-virtual {v0, v5, v6}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 855
    const v5, 0x104000a

    invoke-virtual {p0, v5}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcn/nubia/weather/ui/activity/CityAddActivity$5;

    invoke-direct {v6, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$5;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V

    invoke-virtual {v0, v5, v6}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;

    .line 864
    invoke-virtual {v0}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;->create()Lcn/nubia/commonui/app/NubiaCenterAlertDialog;

    move-result-object v2

    .line 865
    .local v2, "mDialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    invoke-virtual {v2}, Lcn/nubia/commonui/app/NubiaCenterAlertDialog;->show()V

    .line 869
    .end local v0    # "builder":Lcn/nubia/commonui/app/NubiaCenterAlertDialog$Builder;
    .end local v2    # "mDialog":Lcn/nubia/commonui/app/NubiaCenterAlertDialog;
    .end local v3    # "msg":Ljava/lang/String;
    .end local v4    # "title":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private initBackgroundColor()V
    .locals 6

    .prologue
    .line 267
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "weathertype"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 268
    .local v1, "weatherType":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "timeZone"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "timeZoneName":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 271
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 272
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 273
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090167

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 272
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 274
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mParentLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 275
    invoke-static {v1}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 276
    invoke-static {v0}, Lcn/nubia/weather/utils/CalendarUtil;->isTimeNightByTimezone(Ljava/lang/String;)Z

    move-result v5

    .line 275
    invoke-static {v4, v5}, Lcn/nubia/weather/utils/WeatherStateUtils;->getBgColor(IZ)I

    move-result v4

    .line 274
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 284
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mParentLayout:Landroid/widget/LinearLayout;

    .line 279
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    .line 281
    invoke-static {v0}, Lcn/nubia/weather/utils/CalendarUtil;->isTimeNightByTimezone(Ljava/lang/String;)Z

    move-result v5

    .line 280
    invoke-static {v4, v5}, Lcn/nubia/weather/utils/WeatherStateUtils;->getBgColor(IZ)I

    move-result v4

    .line 279
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private initDatas()V
    .locals 3

    .prologue
    .line 148
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mContentResolver:Landroid/content/ContentResolver;

    .line 149
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mPersisterner:Lcn/nubia/weather/persistent/IPersistenter;

    if-nez v1, :cond_1

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mPersisterner:Lcn/nubia/weather/persistent/IPersistenter;

    new-instance v2, Lcn/nubia/weather/ui/activity/CityAddActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$1;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V

    invoke-interface {v1, v2}, Lcn/nubia/weather/persistent/IPersistenter;->getHotCitys(Lcn/nubia/weather/persistent/QueryCallback;)V

    .line 172
    const-string v1, "isLocationOpen"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 173
    invoke-static {p0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v1

    if-nez v1, :cond_0

    .line 174
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    .line 175
    invoke-virtual {v1}, Lcn/nubia/weather/data/DataCenter;->getLocationWeather()Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    .line 176
    .local v0, "mLocationCityWeatherData":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 177
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    :cond_2
    const-string v1, "isLocationOpen"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 180
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/weather/data/DataCenter;->removeWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0
.end method

.method private initEvents()V
    .locals 2

    .prologue
    .line 226
    iget-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mIsOneHand:Z

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mBackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 231
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 232
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    new-instance v1, Lcn/nubia/weather/ui/activity/CityAddActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$2;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 250
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->msearchCancelText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mParentLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcn/nubia/weather/ui/activity/CityAddActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$3;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 264
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 186
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->ImmersionStatusBar()V

    .line 187
    const v0, 0x7f0f0059

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    .line 188
    const v0, 0x7f0f005a

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    .line 189
    const v0, 0x7f0f004d

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->msearchCancelText:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0f0051

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    .line 191
    const v0, 0x7f0f0050

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    .line 192
    const v0, 0x7f0f004a

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mParentLayout:Landroid/widget/LinearLayout;

    .line 193
    const v0, 0x7f0f004c

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaSearchView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    .line 194
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const v1, 0x7f09004b

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconified(Z)V

    .line 196
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconifiedByDefault(Z)V

    .line 197
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 198
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->setOnQueryTextListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;)V

    .line 199
    const v0, 0x7f0f0123

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    .line 200
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 201
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0021

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHintTextColor(I)V

    .line 203
    const v0, 0x7f0f0052

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    .line 204
    const v0, 0x7f0f004f

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    .line 205
    iget-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mIsOneHand:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewStub;

    invoke-direct {v1, p0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 207
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    new-instance v1, Landroid/view/ViewStub;

    invoke-direct {v1, p0}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 209
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setTranscriptMode(I)V

    .line 211
    :cond_0
    new-instance v0, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    invoke-direct {v0, p0, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    .line 212
    const v0, 0x7f0f0053

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    .line 213
    new-instance v0, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;

    invoke-direct {v0, p0, p0}, Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;

    .line 214
    const v0, 0x7f0f0054

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mBackLayout:Landroid/widget/LinearLayout;

    .line 215
    const v0, 0x7f0f0045

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNaviBar:Landroid/view/View;

    .line 216
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 217
    const v0, 0x7f0f0132

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mReloadIv:Landroid/widget/ImageView;

    .line 218
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mReloadIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    const v0, 0x7f0f0133

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mReloadTv:Landroid/widget/TextView;

    .line 220
    const v0, 0x7f0f0134

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetSettingIv:Landroid/widget/ImageView;

    .line 221
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetSettingIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    const v0, 0x7f0f0135

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetSettingTv:Landroid/widget/TextView;

    .line 223
    return-void
.end method

.method private startMainActivity(ILcn/nubia/weather/model/WeatherModel;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 357
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 358
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.opencity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 360
    const-string v1, "CITY_INDEX"

    const v2, 0x7fffffff

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 365
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->startActivity(Landroid/content/Intent;)V

    .line 366
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->finish()V

    .line 367
    return-void

    .line 362
    :cond_0
    const-string v1, "CITY_INDEX"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method


# virtual methods
.method protected doHandlerMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x8

    .line 474
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    .line 475
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 477
    :cond_0
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 478
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 479
    .local v1, "query":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 480
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 481
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 483
    :cond_1
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 484
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v4}, Landroid/widget/GridView;->setVisibility(I)V

    .line 548
    .end local v1    # "query":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 489
    :cond_3
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_4

    .line 490
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 492
    :cond_4
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_5

    .line 493
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 495
    :cond_5
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 497
    :pswitch_0
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    .line 498
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_6

    .line 499
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 500
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    :cond_6
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_7

    .line 503
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 505
    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v2, v2, Ljava/util/List;

    if-eqz v2, :cond_2

    .line 508
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 509
    .local v0, "obj":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 510
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_8

    .line 511
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 514
    :cond_8
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 515
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    invoke-virtual {v2, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->setSearchResultData(Ljava/util/List;)V

    .line 516
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    invoke-virtual {v2}, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 520
    .end local v0    # "obj":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/CityModel;>;"
    :pswitch_1
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_9

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    .line 521
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_9

    .line 522
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 523
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 525
    :cond_9
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-nez v2, :cond_a

    .line 526
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 528
    :cond_a
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 529
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 533
    :pswitch_2
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    if-ne v2, v3, :cond_b

    .line 534
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 536
    :cond_b
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    .line 537
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_c

    .line 538
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 539
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    :cond_c
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    .line 542
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto/16 :goto_0

    .line 495
    nop

    :pswitch_data_0
    .packed-switch 0x100007
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 778
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 823
    :cond_0
    :goto_0
    return-void

    .line 780
    :sswitch_0
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_1

    .line 781
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 783
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getVisibility()I

    move-result v1

    if-ne v1, v2, :cond_2

    .line 784
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setVisibility(I)V

    .line 786
    :cond_2
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 787
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 789
    :cond_3
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    .line 790
    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    .line 791
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 792
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 794
    :cond_4
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 795
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 797
    :cond_5
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_6

    .line 798
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 803
    :cond_6
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_7

    .line 804
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 806
    :cond_7
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->finish()V

    goto :goto_0

    .line 809
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->finish()V

    goto :goto_0

    .line 812
    :sswitch_2
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 813
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 814
    .local v0, "query":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->startQuery(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 818
    .end local v0    # "query":Ljava/lang/String;
    :sswitch_3
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->setNet()V

    goto/16 :goto_0

    .line 778
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f004d -> :sswitch_0
        0x7f0f0054 -> :sswitch_1
        0x7f0f0132 -> :sswitch_2
        0x7f0f0134 -> :sswitch_3
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcn/nubia/weather/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    const-string v0, "CityAddActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 109
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->isOneHand()Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mIsOneHand:Z

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSetNetFlag:Z

    .line 111
    iget-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mIsOneHand:Z

    if-eqz v0, :cond_0

    .line 112
    const v0, 0x7f030017

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->setContentView(I)V

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/persistent/WeatherStore;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/persistent/WeatherStore;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mPersisterner:Lcn/nubia/weather/persistent/IPersistenter;

    .line 117
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->initView()V

    .line 118
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->initEvents()V

    .line 119
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->initBackgroundColor()V

    .line 120
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->initDatas()V

    .line 123
    return-void

    .line 114
    :cond_0
    const v0, 0x7f030016

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->setContentView(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 133
    const-string v0, "CityAddActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->onDestroy()V

    .line 135
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 11
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 354
    .end local p3    # "arg2":I
    :cond_0
    :goto_0
    return-void

    .line 300
    .restart local p3    # "arg2":I
    :sswitch_0
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchCityAdapter:Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;

    iget-boolean v7, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mIsOneHand:Z

    if-eqz v7, :cond_1

    add-int/lit8 p3, p3, -0x1

    .end local p3    # "arg2":I
    :cond_1
    invoke-virtual {v6, p3}, Lcn/nubia/weather/ui/activity/CityAddActivity$QueryCityAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/CityModel;

    .line 302
    .local v1, "cityInfo":Lcn/nubia/weather/model/CityModel;
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/weather/data/DataCenter;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 303
    .local v4, "index":I
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcn/nubia/weather/data/DataCenter;->getWeather(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v5

    .line 304
    .local v5, "model":Lcn/nubia/weather/model/WeatherModel;
    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    .line 305
    new-instance v5, Lcn/nubia/weather/model/WeatherModel;

    .end local v5    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-direct {v5}, Lcn/nubia/weather/model/WeatherModel;-><init>()V

    .line 306
    .restart local v5    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 307
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getmParentCityKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmParentCityID(Ljava/lang/String;)V

    .line 308
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getName_cn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 309
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V

    .line 310
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setGmtOffSet(Ljava/lang/String;)V

    .line 311
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcn/nubia/weather/data/DataCenter;->addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    .line 312
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 313
    const-string v6, "CityAddActivity"

    const-string v7, "add city whose AreaID is NULL"

    invoke-static {v6, v7}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v6

    .line 316
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getmParentCityKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 315
    invoke-virtual {v6, v7, v8, v9, v10}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 325
    :cond_3
    invoke-virtual {v1}, Lcn/nubia/weather/model/CityModel;->getName_cn()Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "cityName":Ljava/lang/String;
    new-instance v0, Lcn/nubia/weather/model/CityHelper;

    invoke-direct {v0}, Lcn/nubia/weather/model/CityHelper;-><init>()V

    .line 327
    .local v0, "cityHelper":Lcn/nubia/weather/model/CityHelper;
    invoke-direct {p0, v4, v5}, Lcn/nubia/weather/ui/activity/CityAddActivity;->startMainActivity(ILcn/nubia/weather/model/WeatherModel;)V

    goto/16 :goto_0

    .line 318
    .end local v0    # "cityHelper":Lcn/nubia/weather/model/CityHelper;
    .end local v2    # "cityName":Ljava/lang/String;
    :cond_4
    if-gtz v4, :cond_5

    if-nez v4, :cond_3

    .line 320
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "isLocationOpen"

    const/4 v8, 0x1

    .line 319
    invoke-static {v6, v7, v8}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_3

    .line 321
    :cond_5
    const v6, 0x7f09004f

    .line 322
    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 321
    invoke-static {p0, v6}, Lcn/nubia/weather/utils/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 330
    .end local v1    # "cityInfo":Lcn/nubia/weather/model/CityModel;
    .end local v4    # "index":I
    .end local v5    # "model":Lcn/nubia/weather/model/WeatherModel;
    .restart local p3    # "arg2":I
    :sswitch_1
    iget-object v6, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityInfos:Ljava/util/List;

    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/weather/model/CityModel;

    .line 331
    .local v3, "hotCityInfo":Lcn/nubia/weather/model/CityModel;
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v3}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcn/nubia/weather/data/DataCenter;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 332
    .restart local v4    # "index":I
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcn/nubia/weather/data/DataCenter;->getWeather(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v5

    .line 333
    .restart local v5    # "model":Lcn/nubia/weather/model/WeatherModel;
    const/4 v6, -0x1

    if-ne v4, v6, :cond_6

    .line 334
    new-instance v5, Lcn/nubia/weather/model/WeatherModel;

    .end local v5    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-direct {v5}, Lcn/nubia/weather/model/WeatherModel;-><init>()V

    .line 335
    .restart local v5    # "model":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v3}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmAreaID(Ljava/lang/String;)V

    .line 336
    invoke-virtual {v3}, Lcn/nubia/weather/model/CityModel;->getName_cn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmCityName(Ljava/lang/String;)V

    .line 337
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcn/nubia/weather/model/WeatherModel;->setmType(I)V

    .line 338
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcn/nubia/weather/data/DataCenter;->addWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    .line 339
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v6

    .line 340
    invoke-virtual {v3}, Lcn/nubia/weather/model/CityModel;->getmAreaID()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    .line 339
    invoke-virtual {v6, v7, v8}, Lcn/nubia/weather/presenter/OverAllControl;->queryWeatherInfo(Ljava/lang/String;Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 341
    invoke-direct {p0, v4, v5}, Lcn/nubia/weather/ui/activity/CityAddActivity;->startMainActivity(ILcn/nubia/weather/model/WeatherModel;)V

    goto/16 :goto_0

    .line 342
    :cond_6
    if-gtz v4, :cond_7

    if-nez v4, :cond_0

    .line 344
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "isLocationOpen"

    const/4 v8, 0x1

    .line 343
    invoke-static {v6, v7, v8}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_0

    .line 345
    :cond_7
    const v6, 0x7f09004f

    .line 346
    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 345
    invoke-static {p0, v6}, Lcn/nubia/weather/utils/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 298
    :sswitch_data_0
    .sparse-switch
        0x7f0f004f -> :sswitch_0
        0x7f0f0053 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 127
    const-string v0, "CityAddActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->onPause()V

    .line 129
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3
    .param p1, "newText"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 410
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 411
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->startQuery(Ljava/lang/String;)V

    .line 435
    :cond_0
    :goto_0
    return v2

    .line 413
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 414
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 416
    :cond_2
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    .line 417
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 418
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 419
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 421
    :cond_3
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 422
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 425
    :cond_4
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 426
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 428
    :cond_5
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_6

    .line 429
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 431
    :cond_6
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 432
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    .line 371
    const/4 v0, 0x0

    return v0
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 139
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->onUserLeaveHint()V

    .line 140
    iget-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSetNetFlag:Z

    if-eqz v0, :cond_0

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSetNetFlag:Z

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->finish()V

    goto :goto_0
.end method

.method public setNet()V
    .locals 2

    .prologue
    .line 826
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSetNetFlag:Z

    .line 827
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 828
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 829
    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->startActivity(Landroid/content/Intent;)V

    .line 830
    return-void
.end method

.method public startQuery(Ljava/lang/String;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 439
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 471
    :cond_0
    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 443
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mQueryCityList:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 446
    :cond_2
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 447
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 449
    :cond_3
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v0}, Landroid/widget/GridView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 450
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mHotCityGrid:Landroid/widget/GridView;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    .line 452
    :cond_4
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    .line 453
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 454
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mSearchEmptyImg:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    :cond_5
    invoke-static {p0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_6

    .line 458
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 459
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 463
    :cond_6
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_7

    .line 464
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mProgressView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 467
    :cond_7
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_8

    .line 468
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity;->mNetErrorView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 470
    :cond_8
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/weather/presenter/OverAllControl;->searchCities(Ljava/lang/String;)V

    goto :goto_0
.end method
