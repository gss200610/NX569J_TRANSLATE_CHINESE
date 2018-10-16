.class public Lcn/nubia/weather/ui/view/WeatherPageFragment;
.super Landroid/support/v4/app/Fragment;
.source "WeatherPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WeatherPageFragment"


# instance fields
.field private isGpsNeeded:Z

.field private isRealDay:Z

.field private mAirTextView:Landroid/widget/TextView;

.field private mAlarm:Landroid/widget/TextView;

.field private mAlarmDetail:Ljava/lang/String;

.field private mAlarmDetailTextView:Lcn/nubia/weather/ui/view/JustifyTextView;

.field private mAlarmLayout:Landroid/widget/LinearLayout;

.field private mAlarmLink:Ljava/lang/String;

.field private mAlarmLinkTextView:Landroid/widget/TextView;

.field private mAlarmPPWindow:Landroid/widget/PopupWindow;

.field private mCheckNewTextView:Landroid/widget/TextView;

.field private mCityBarLayout:Landroid/widget/LinearLayout;

.field private mCityScrollTextView:Landroid/widget/TextView;

.field private mCityTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCurrentTemperatureTextView:Landroid/widget/TextView;

.field private mCurrentWeatherTextView:Landroid/widget/TextView;

.field private mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

.field private mDailyForecastLv:Landroid/widget/ListView;

.field private mDay1DateTextView:Landroid/widget/TextView;

.field private mDay1HighTextView:Landroid/widget/TextView;

.field private mDay1Layout:Landroid/widget/RelativeLayout;

.field private mDay1LowImageView:Landroid/widget/ImageView;

.field private mDay1LowTextView:Landroid/widget/TextView;

.field private mDay1WeatherImageView:Landroid/widget/ImageView;

.field private mDay1WeatherTextView:Landroid/widget/TextView;

.field private mDay2DateTextView:Landroid/widget/TextView;

.field private mDay2HighTextView:Landroid/widget/TextView;

.field private mDay2Layout:Landroid/widget/RelativeLayout;

.field private mDay2LowImageView:Landroid/widget/ImageView;

.field private mDay2LowTextView:Landroid/widget/TextView;

.field private mDay2WeatherImageView:Landroid/widget/ImageView;

.field private mDay2WeatherTextView:Landroid/widget/TextView;

.field private mDay3DateTextView:Landroid/widget/TextView;

.field private mDay3HighTextView:Landroid/widget/TextView;

.field private mDay3Layout:Landroid/widget/RelativeLayout;

.field private mDay3LowImageView:Landroid/widget/ImageView;

.field private mDay3LowTextView:Landroid/widget/TextView;

.field private mDay3WeatherImageView:Landroid/widget/ImageView;

.field private mDay3WeatherTextView:Landroid/widget/TextView;

.field private mDay4DateTextView:Landroid/widget/TextView;

.field private mDay4HighTextView:Landroid/widget/TextView;

.field private mDay4Layout:Landroid/widget/RelativeLayout;

.field private mDay4LowImageView:Landroid/widget/ImageView;

.field private mDay4LowTextView:Landroid/widget/TextView;

.field private mDay4WeatherImageView:Landroid/widget/ImageView;

.field private mDay4WeatherTextView:Landroid/widget/TextView;

.field private mDayLink:Ljava/lang/String;

.field private mDivideView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHourIndexes:[I

.field private mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

.field private mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

.field private mHumidityImageView:Landroid/widget/ImageView;

.field private mHumidityLayout:Landroid/widget/LinearLayout;

.field private mHumidityTextView:Landroid/widget/TextView;

.field private mIndexLink:Ljava/lang/String;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mNoInfoTextView:Landroid/widget/TextView;

.field private mRayImageView:Landroid/widget/ImageView;

.field private mRayLayout:Landroid/widget/LinearLayout;

.field private mRayTextView:Landroid/widget/TextView;

.field private mRealFeelImageView:Landroid/widget/ImageView;

.field private mRealFeelLayout:Landroid/widget/LinearLayout;

.field private mRealFeelTextView:Landroid/widget/TextView;

.field private mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

.field private mRefreshTextView:Landroid/widget/TextView;

.field private mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

.field private mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

.field private mSeperature:Landroid/view/View;

.field private mSportImageView:Landroid/widget/ImageView;

.field private mSportLayout:Landroid/widget/LinearLayout;

.field private mSportTextView:Landroid/widget/TextView;

.field private mStopCallBack:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;

.field private mView:Landroid/view/View;

.field private mVisibilityImageView:Landroid/widget/ImageView;

.field private mVisibilityLayout:Landroid/widget/LinearLayout;

.field private mVisibilityTextView:Landroid/widget/TextView;

.field private mWeather:Lcn/nubia/weather/model/WeatherModel;

.field private mWeatherTextView:Landroid/widget/TextView;

.field private mWindImageView:Landroid/widget/ImageView;

.field private mWindLayout:Landroid/widget/LinearLayout;

.field private mWindTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 181
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isRealDay:Z

    .line 163
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isGpsNeeded:Z

    .line 164
    new-instance v0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;-><init>(Lcn/nubia/weather/ui/view/WeatherPageFragment;Lcn/nubia/weather/ui/view/WeatherPageFragment$1;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHandler:Landroid/os/Handler;

    .line 175
    iput-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    .line 176
    iput-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    .line 177
    iput-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    .line 182
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    .line 183
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/view/WeatherPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setDragTextTime()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/ui/view/OnScrollHelper;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mStopCallBack:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/model/WeatherModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 83
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcn/nubia/weather/ui/view/WeatherPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 83
    iput-boolean p1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isGpsNeeded:Z

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/weather/ui/view/WeatherPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 83
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setGpsNotification()V

    return-void
.end method

.method private addSunRiseAndSetInfo(Ljava/util/List;Ljava/util/Date;)V
    .locals 16
    .param p2, "currentDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1165
    .local p1, "hourlyForecastModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    if-nez p1, :cond_1

    .line 1215
    :cond_0
    :goto_0
    return-void

    .line 1168
    :cond_1
    if-nez p2, :cond_2

    .line 1169
    new-instance p2, Ljava/util/Date;

    .end local p2    # "currentDate":Ljava/util/Date;
    invoke-direct/range {p2 .. p2}, Ljava/util/Date;-><init>()V

    .line 1171
    .restart local p2    # "currentDate":Ljava/util/Date;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1172
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v12

    .line 1173
    .local v12, "dailyForecastDatas":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1175
    const/4 v14, 0x0

    .line 1176
    .local v14, "riseSetCount":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    .line 1177
    .local v3, "dailyForecastData":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    invoke-virtual {v3}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmSunriseTime()Ljava/util/Date;

    move-result-object v4

    .line 1178
    .local v4, "sunRiseTime":Ljava/util/Date;
    invoke-virtual {v3}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmSunsetTime()Ljava/util/Date;

    move-result-object v9

    .line 1180
    .local v9, "sunSetTime":Ljava/util/Date;
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcn/nubia/weather/utils/TimeUtils;->getHourDiff(Ljava/util/Date;Ljava/util/Date;)I

    move-result v13

    .line 1191
    .local v13, "riseDiff":I
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcn/nubia/weather/utils/TimeUtils;->isTimeDiffWithinADay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1192
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v5, v1, :cond_4

    .line 1193
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->addSunRiseOrSetInfo(Ljava/util/List;Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;Ljava/util/Date;IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1195
    add-int/lit8 v14, v14, 0x1

    .line 1200
    .end local v5    # "i":I
    :cond_4
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcn/nubia/weather/utils/TimeUtils;->isTimeDiffWithinADay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1201
    const/4 v5, 0x1

    .restart local v5    # "i":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v5, v1, :cond_5

    .line 1202
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v8, v3

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->addSunRiseOrSetInfo(Ljava/util/List;Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;Ljava/util/Date;IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1204
    add-int/lit8 v14, v14, 0x1

    .line 1208
    :cond_5
    const/4 v1, 0x2

    if-ne v14, v1, :cond_3

    goto/16 :goto_0

    .line 1192
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1201
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private addSunRiseOrSetInfo(Ljava/util/List;Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;Ljava/util/Date;IZ)Z
    .locals 10
    .param p2, "dailyForecastData"    # Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .param p3, "time"    # Ljava/util/Date;
    .param p4, "i"    # I
    .param p5, "isSunRise"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;",
            ">;",
            "Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;",
            "Ljava/util/Date;",
            "IZ)Z"
        }
    .end annotation

    .prologue
    .line 1221
    .local p1, "hourlyForecastModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    const/4 v2, 0x0

    .line 1222
    .local v2, "isAddSuccess":Z
    if-ltz p4, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, p4, :cond_1

    :cond_0
    move v3, v2

    .line 1270
    .end local v2    # "isAddSuccess":Z
    .local v3, "isAddSuccess":I
    :goto_0
    return v3

    .line 1225
    .end local v3    # "isAddSuccess":I
    .restart local v2    # "isAddSuccess":Z
    :cond_1
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDate()Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    move v3, v2

    .line 1226
    .restart local v3    # "isAddSuccess":I
    goto :goto_0

    .line 1228
    .end local v3    # "isAddSuccess":I
    :cond_3
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    .line 1229
    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    add-int/lit8 v5, p4, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    .line 1230
    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_4

    .line 1231
    new-instance v1, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-direct {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;-><init>()V

    .line 1232
    .local v1, "hourlyForecastModel":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1233
    .local v0, "date":Ljava/util/Date;
    if-eqz p5, :cond_5

    .line 1234
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    .line 1235
    invoke-virtual {p2}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmSunriseTime()Ljava/util/Date;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v7}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v7

    .line 1234
    invoke-static {v5, v6, v7}, Lcn/nubia/weather/utils/TimeUtils;->getDetailedHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 1240
    :goto_1
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_6

    .line 1241
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    .line 1258
    :goto_2
    invoke-virtual {v1, p3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDate(Ljava/util/Date;)V

    .line 1259
    if-eqz p5, :cond_b

    .line 1260
    const/4 v5, 0x0

    .line 1261
    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setSunRiseOrSetFlag(I)V

    .line 1266
    :goto_3
    add-int/lit8 v5, p4, 0x1

    invoke-interface {p1, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1267
    const/4 v2, 0x1

    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "hourlyForecastModel":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_4
    move v3, v2

    .line 1270
    .restart local v3    # "isAddSuccess":I
    goto/16 :goto_0

    .line 1237
    .end local v3    # "isAddSuccess":I
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v1    # "hourlyForecastModel":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_5
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    .line 1238
    invoke-virtual {p2}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmSunsetTime()Ljava/util/Date;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v7}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v7

    .line 1237
    invoke-static {v5, v6, v7}, Lcn/nubia/weather/utils/TimeUtils;->getDetailedHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    goto :goto_1

    .line 1242
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, p4, 0x1

    if-ne v5, v6, :cond_7

    .line 1243
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    goto :goto_2

    .line 1244
    :cond_7
    add-int/lit8 v5, p4, 0x1

    .line 1245
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    .line 1246
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    goto :goto_2

    .line 1247
    :cond_8
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_9

    .line 1248
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    goto :goto_2

    .line 1249
    :cond_9
    add-int/lit8 v5, p4, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_a

    .line 1250
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 1252
    :cond_a
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v5, p4, 0x1

    .line 1253
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    .line 1254
    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    .line 1253
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 1252
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1256
    .local v4, "temperature":Ljava/lang/Integer;
    invoke-virtual {v1, v4}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 1263
    .end local v4    # "temperature":Ljava/lang/Integer;
    :cond_b
    const/4 v5, 0x1

    .line 1264
    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setSunRiseOrSetFlag(I)V

    goto/16 :goto_3
.end method

.method private adjuestViewTop8dp()V
    .locals 7

    .prologue
    .line 416
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b016c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 418
    .local v0, "adjustTopSize":I
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 419
    .local v1, "airTextViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v0

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 420
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 423
    .local v4, "weatherTextViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v0

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 424
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 426
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSeperature:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 427
    .local v3, "seperatureLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v0

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 428
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSeperature:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 430
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 431
    .local v2, "hourlyForecastRvLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v0

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 432
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 434
    return-void
.end method

.method private initConfig()V
    .locals 0

    .prologue
    .line 318
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 1116
    const-string v0, "fragment initData"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1118
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmLink:Ljava/lang/String;

    .line 1119
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mIndexLink:Ljava/lang/String;

    .line 1120
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourIndexes:[I

    .line 1122
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    .line 1124
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setDates()V

    .line 1125
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    .line 1126
    invoke-static {v0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkState(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_1

    .line 1127
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initDataWithoutInfo()V

    .line 1128
    const-string v0, "WeatherPageFragment"

    const-string v1, "no network initDataWithoutInfo"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1152
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1154
    :goto_0
    return-void

    .line 1131
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-static {v0}, Lcn/nubia/weather/utils/TimeUtils;->isDataUpToDate(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1132
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initDataWithoutInfo()V

    .line 1133
    const-string v0, "WeatherPageFragment"

    const-string v1, "DataNotUpDate initDataWithoutInfo()"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1152
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 1136
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isGpsNeeded:Z

    if-eqz v0, :cond_3

    .line 1137
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setGpsNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1152
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 1140
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCheckNewTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1141
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mNoInfoTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1142
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setCityName()V

    .line 1143
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setAlarmData()V

    .line 1144
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setAQIData()V

    .line 1145
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setForecastData()V

    .line 1146
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setIndexData()V

    .line 1148
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setHourfcAndObserveData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1152
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method private initDataWithoutInfo()V
    .locals 7

    .prologue
    const v6, 0x7f0900b5

    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 437
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090166

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 439
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityScrollTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 445
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setCityBarColor(Ljava/lang/Integer;)V

    .line 446
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 454
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 455
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 457
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 465
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 468
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 469
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 472
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 477
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 483
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCheckNewTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mNoInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 485
    const/4 v0, -0x1

    .line 486
    .local v0, "type":I
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setEmptyHourlyForeceastView()V

    .line 487
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setEmptyDailyForeceastView()V

    .line 489
    return-void

    .line 441
    .end local v0    # "type":I
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityScrollTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 1274
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1275
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1276
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1277
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1278
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1279
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1281
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1282
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1283
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmLinkTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1284
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    new-instance v1, Lcn/nubia/weather/ui/view/WeatherPageFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment$1;-><init>(Lcn/nubia/weather/ui/view/WeatherPageFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setStateListener(Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;)V

    .line 1320
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 13
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 322
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001a

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 323
    .local v9, "alarmView":Landroid/view/View;
    const v0, 0x7f0f0071

    .line 324
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/JustifyTextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmDetailTextView:Lcn/nubia/weather/ui/view/JustifyTextView;

    .line 325
    const v0, 0x7f0f0072

    .line 326
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmLinkTextView:Landroid/widget/TextView;

    .line 327
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0041

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v9, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    .line 329
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 330
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 332
    const v0, 0x7f0f009f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    .line 334
    const v0, 0x7f0f00af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDivideView:Landroid/view/View;

    .line 335
    const v0, 0x7f0f00ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityBarLayout:Landroid/widget/LinearLayout;

    .line 336
    invoke-virtual {p0, v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setCityBarColor(Ljava/lang/Integer;)V

    .line 338
    const v0, 0x7f0f00b1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/CircleView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

    .line 341
    const v0, 0x7f0f00ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityTextView:Landroid/widget/TextView;

    .line 342
    const v0, 0x7f0f00a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityScrollTextView:Landroid/widget/TextView;

    .line 344
    const v0, 0x7f0f00b0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 346
    .local v6, "refreshPanelLayout":Landroid/widget/LinearLayout;
    new-instance v0, Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDivideView:Landroid/view/View;

    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

    iget-object v7, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityBarLayout:Landroid/widget/LinearLayout;

    .line 348
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v8

    check-cast v8, Lcn/nubia/weather/app/WeatherApplication;

    invoke-virtual {v8}, Lcn/nubia/weather/app/WeatherApplication;->getWeatherAnimation()Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcn/nubia/weather/ui/view/OnScrollHelper;-><init>(Landroid/app/Activity;Lcn/nubia/weather/ui/view/NubiaOverScrollView;Landroid/view/View;Landroid/view/View;Lcn/nubia/weather/ui/view/CircleView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/bluestareffects/app/weather/api/WeatherAnimation;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    .line 349
    const v0, 0x7f0f00b2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    .line 354
    const v0, 0x7f0f00a2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    .line 357
    const v0, 0x7f0f00a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    .line 358
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    .line 360
    .local v12, "typefaceNubia":Landroid/graphics/Typeface;
    if-eqz v12, :cond_0

    .line 361
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 365
    :cond_0
    const v0, 0x7f0f00a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    .line 366
    const v0, 0x7f0f00a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    .line 372
    const v0, 0x7f0f00a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    .line 375
    const v0, 0x7f0f00bb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayTextView:Landroid/widget/TextView;

    .line 376
    const v0, 0x7f0f00c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityTextView:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f0f00c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindTextView:Landroid/widget/TextView;

    .line 378
    const v0, 0x7f0f00c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityTextView:Landroid/widget/TextView;

    .line 379
    const v0, 0x7f0f00be

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelTextView:Landroid/widget/TextView;

    .line 380
    const v0, 0x7f0f00ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportTextView:Landroid/widget/TextView;

    .line 382
    const v0, 0x7f0f00bc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayImageView:Landroid/widget/ImageView;

    .line 383
    const v0, 0x7f0f00c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityImageView:Landroid/widget/ImageView;

    .line 384
    const v0, 0x7f0f00c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindImageView:Landroid/widget/ImageView;

    .line 385
    const v0, 0x7f0f00c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityImageView:Landroid/widget/ImageView;

    .line 386
    const v0, 0x7f0f00bf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelImageView:Landroid/widget/ImageView;

    .line 387
    const v0, 0x7f0f00cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportImageView:Landroid/widget/ImageView;

    .line 388
    const v0, 0x7f0f00a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCheckNewTextView:Landroid/widget/TextView;

    .line 389
    const v0, 0x7f0f00a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mNoInfoTextView:Landroid/widget/TextView;

    .line 391
    const v0, 0x7f0f00ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayLayout:Landroid/widget/LinearLayout;

    .line 392
    const v0, 0x7f0f00c0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityLayout:Landroid/widget/LinearLayout;

    .line 393
    const v0, 0x7f0f00c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindLayout:Landroid/widget/LinearLayout;

    .line 394
    const v0, 0x7f0f00c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityLayout:Landroid/widget/LinearLayout;

    .line 395
    const v0, 0x7f0f00bd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelLayout:Landroid/widget/LinearLayout;

    .line 396
    const v0, 0x7f0f00c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportLayout:Landroid/widget/LinearLayout;

    .line 398
    const v0, 0x7f0f00b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    .line 399
    const v0, 0x7f0f00ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastLv:Landroid/widget/ListView;

    .line 400
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 401
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 402
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 406
    new-instance v10, Lcn/nubia/weather/model/DeviceInfo;

    invoke-direct {v10}, Lcn/nubia/weather/model/DeviceInfo;-><init>()V

    .line 407
    .local v10, "deviceInfo":Lcn/nubia/weather/model/DeviceInfo;
    invoke-virtual {v10}, Lcn/nubia/weather/model/DeviceInfo;->getMobileModel()Ljava/lang/String;

    move-result-object v11

    .line 408
    .local v11, "mode":Ljava/lang/String;
    const v0, 0x7f0f00a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSeperature:Landroid/view/View;

    .line 409
    const-string v0, "NX609"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NX606"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 410
    :cond_1
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->adjuestViewTop8dp()V

    .line 413
    :cond_2
    return-void
.end method

.method private isShow()Z
    .locals 10

    .prologue
    .line 994
    const/4 v4, 0x1

    .line 995
    .local v4, "result":Z
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    .line 996
    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v5

    if-nez v5, :cond_1

    .line 997
    :cond_0
    const/4 v4, 0x0

    .line 1014
    :goto_0
    return v4

    .line 999
    :cond_1
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/model/HourfcModel;->getmHours()Ljava/util/List;

    move-result-object v3

    .line 1000
    .local v3, "hourfcList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1001
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1003
    :cond_3
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    .line 1004
    .local v2, "hourfcInfomodel":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    invoke-virtual {v2}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcPublishTime()Ljava/util/Date;

    move-result-object v1

    .line 1005
    .local v1, "date":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1006
    .local v0, "currentDate":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 1007
    const/4 v4, 0x0

    goto :goto_0

    .line 1009
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setAQIData()V
    .locals 10

    .prologue
    .line 835
    const-string v5, "fragment aqi"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 837
    :try_start_0
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 838
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 839
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v2

    .line 840
    .local v2, "aqiModel":Lcn/nubia/weather/model/AQIModel;
    invoke-virtual {v2}, Lcn/nubia/weather/model/AQIModel;->getmPublishTime()Ljava/util/Date;

    move-result-object v4

    .line 841
    .local v4, "publishDate":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 843
    .local v3, "currentDate":Ljava/util/Date;
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/model/AQIModel;->getmAQI()F

    move-result v5

    float-to-int v0, v5

    .line 845
    .local v0, "AQI":I
    if-nez v4, :cond_2

    .line 846
    const/4 v0, -0x1

    .line 852
    :cond_0
    :goto_0
    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    .line 853
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 857
    :goto_1
    invoke-static {v0}, Lcn/nubia/weather/model/ModelHelper;->toAirQualityLevel(I)Ljava/lang/String;

    move-result-object v1

    .line 880
    .local v1, "airLevel":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 884
    .end local v0    # "AQI":I
    .end local v1    # "airLevel":Ljava/lang/String;
    .end local v2    # "aqiModel":Lcn/nubia/weather/model/AQIModel;
    .end local v3    # "currentDate":Ljava/util/Date;
    .end local v4    # "publishDate":Ljava/util/Date;
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 886
    return-void

    .line 847
    .restart local v0    # "AQI":I
    .restart local v2    # "aqiModel":Lcn/nubia/weather/model/AQIModel;
    .restart local v3    # "currentDate":Ljava/util/Date;
    .restart local v4    # "publishDate":Ljava/util/Date;
    :cond_2
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 848
    const/4 v0, -0x1

    goto :goto_0

    .line 849
    :cond_3
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 850
    const/4 v0, -0x1

    goto :goto_0

    .line 855
    :cond_4
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 884
    .end local v0    # "AQI":I
    .end local v2    # "aqiModel":Lcn/nubia/weather/model/AQIModel;
    .end local v3    # "currentDate":Ljava/util/Date;
    .end local v4    # "publishDate":Ljava/util/Date;
    :catchall_0
    move-exception v5

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v5
.end method

.method private setAlarmData()V
    .locals 22

    .prologue
    .line 744
    const-string v17, "fragment alarm"

    invoke-static/range {v17 .. v17}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 746
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v17

    if-eqz v17, :cond_e

    .line 748
    const/4 v5, 0x0

    .line 749
    .local v5, "alarmTime":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcn/nubia/weather/model/AlarmModel;->getmAlarms()Ljava/util/List;

    move-result-object v6

    .line 750
    .local v6, "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    if-eqz v6, :cond_e

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    if-eqz v17, :cond_e

    .line 751
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v12

    .line 752
    .local v12, "len":I
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    .line 754
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v17

    move/from16 v0, v17

    if-ge v11, v0, :cond_0

    .line 755
    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    .line 756
    .local v10, "f":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    invoke-virtual {v10}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmPublishTime()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v11

    .line 754
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 759
    .end local v10    # "f":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    :cond_0
    invoke-static {v5}, Lcn/nubia/weather/model/ModelHelper;->findRecentlyAlarmIndex([Ljava/lang/String;)I

    move-result v14

    .line 760
    .local v14, "maxAlarmTimeIndex":I
    if-ltz v14, :cond_e

    if-ge v14, v12, :cond_e

    .line 761
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    .local v4, "alarmInfo":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    if-nez v4, :cond_1

    .line 830
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 832
    .end local v4    # "alarmInfo":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    .end local v5    # "alarmTime":[Ljava/lang/String;
    .end local v6    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .end local v11    # "i":I
    .end local v12    # "len":I
    .end local v14    # "maxAlarmTimeIndex":I
    :goto_1
    return-void

    .line 765
    .restart local v4    # "alarmInfo":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    .restart local v5    # "alarmTime":[Ljava/lang/String;
    .restart local v6    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .restart local v11    # "i":I
    .restart local v12    # "len":I
    .restart local v14    # "maxAlarmTimeIndex":I
    :cond_1
    :try_start_1
    invoke-virtual {v4}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmPublishTime()Ljava/lang/String;

    move-result-object v17

    const-string v18, "yyyy-MM-dd HH:mm"

    invoke-static/range {v17 .. v18}, Lcn/nubia/weather/utils/TimeUtils;->getDateByStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v15

    .line 767
    .local v15, "publishDate":Ljava/util/Date;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 768
    .local v9, "currentDate":Ljava/util/Date;
    if-nez v15, :cond_2

    .line 830
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    .line 771
    :cond_2
    :try_start_2
    invoke-virtual {v9}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v20

    sub-long v18, v18, v20

    const-wide/32 v20, 0x5265c00

    cmp-long v17, v18, v20

    if-lez v17, :cond_3

    .line 830
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    .line 774
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmLevelName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcn/nubia/weather/utils/LanguageUtil;->getAlarmLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 775
    .local v13, "level":Ljava/lang/String;
    invoke-virtual {v4}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmClassName()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcn/nubia/weather/utils/LanguageUtil;->getAlarmType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 776
    .local v16, "type":Ljava/lang/String;
    invoke-virtual {v4}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmContent()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmDetail:Ljava/lang/String;

    .line 777
    invoke-virtual {v4}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmHtml()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmLink:Ljava/lang/String;

    .line 778
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_4

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v17

    if-eqz v17, :cond_5

    .line 830
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    .line 782
    :cond_5
    :try_start_4
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v17

    if-eqz v17, :cond_f

    .line 783
    new-instance v7, Landroid/text/SpannableStringBuilder;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0900b8

    .line 784
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 790
    .local v7, "builder":Landroid/text/SpannableStringBuilder;
    :goto_2
    const/4 v8, 0x0

    .line 791
    .local v8, "color":I
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0900bd

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 792
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e00ad

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 794
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090049

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_7

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e0012

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 797
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0900bf

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_8

    .line 798
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e00b0

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 800
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090091

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 801
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e0086

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 803
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0900bd

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 804
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e00ad

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 806
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090097

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_b

    .line 807
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e0092

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 809
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f090048

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    .line 810
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e0011

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 812
    :cond_c
    if-nez v8, :cond_d

    .line 813
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0e00ad

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    .line 815
    :cond_d
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v17

    if-eqz v17, :cond_10

    .line 816
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    .line 817
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    const/16 v20, 0x22

    .line 816
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 824
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    .line 825
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 830
    .end local v4    # "alarmInfo":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    .end local v5    # "alarmTime":[Ljava/lang/String;
    .end local v6    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .end local v7    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "color":I
    .end local v9    # "currentDate":Ljava/util/Date;
    .end local v11    # "i":I
    .end local v12    # "len":I
    .end local v13    # "level":Ljava/lang/String;
    .end local v14    # "maxAlarmTimeIndex":I
    .end local v15    # "publishDate":Ljava/util/Date;
    .end local v16    # "type":Ljava/lang/String;
    :cond_e
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_1

    .line 786
    .restart local v4    # "alarmInfo":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    .restart local v5    # "alarmTime":[Ljava/lang/String;
    .restart local v6    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .restart local v9    # "currentDate":Ljava/util/Date;
    .restart local v11    # "i":I
    .restart local v12    # "len":I
    .restart local v13    # "level":Ljava/lang/String;
    .restart local v14    # "maxAlarmTimeIndex":I
    .restart local v15    # "publishDate":Ljava/util/Date;
    .restart local v16    # "type":Ljava/lang/String;
    :cond_f
    :try_start_5
    new-instance v7, Landroid/text/SpannableStringBuilder;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const v18, 0x7f0900b8

    .line 787
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v7, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v7    # "builder":Landroid/text/SpannableStringBuilder;
    goto/16 :goto_2

    .line 820
    .restart local v8    # "color":I
    :cond_10
    new-instance v17, Landroid/text/style/ForegroundColorSpan;

    move-object/from16 v0, v17

    invoke-direct {v0, v8}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, 0x1

    .line 821
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, 0x1

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v20

    add-int v19, v19, v20

    const/16 v20, 0x22

    .line 820
    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 830
    .end local v4    # "alarmInfo":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    .end local v5    # "alarmTime":[Ljava/lang/String;
    .end local v6    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .end local v7    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v8    # "color":I
    .end local v9    # "currentDate":Ljava/util/Date;
    .end local v11    # "i":I
    .end local v12    # "len":I
    .end local v13    # "level":Ljava/lang/String;
    .end local v14    # "maxAlarmTimeIndex":I
    .end local v15    # "publishDate":Ljava/util/Date;
    .end local v16    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v17

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v17
.end method

.method private setCityName()V
    .locals 4

    .prologue
    .line 588
    const-string v1, "fragment cityname"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 590
    :try_start_0
    const-string v1, "WeatherPageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCityName . CityName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    .line 593
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 594
    :goto_0
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 595
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityScrollTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 597
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 599
    return-void

    .line 593
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 597
    .end local v0    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1
.end method

.method private setDates()V
    .locals 3

    .prologue
    .line 889
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 890
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 896
    .local v1, "todayOfWeek":I
    return-void
.end method

.method private setDragTextTime()V
    .locals 14

    .prologue
    const/16 v13, 0x5a0

    const/16 v11, 0x3c

    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 1324
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v6

    .line 1325
    .local v6, "updateTime":J
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmRefreshTime()J

    move-result-wide v4

    .line 1330
    .local v4, "refreshTime":J
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 1332
    .local v2, "mDifferentTime":J
    :goto_0
    const-wide/32 v8, 0xea60

    div-long v8, v2, v8

    long-to-int v0, v8

    .line 1334
    .local v0, "mDifferentMin":I
    if-nez v0, :cond_1

    .line 1335
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    const v8, 0x7f09009a

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1349
    :goto_1
    return-void

    .line 1331
    .end local v0    # "mDifferentMin":I
    .end local v2    # "mDifferentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    goto :goto_0

    .line 1336
    .restart local v0    # "mDifferentMin":I
    .restart local v2    # "mDifferentTime":J
    :cond_1
    if-gt v10, v0, :cond_2

    if-ge v0, v11, :cond_2

    .line 1337
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09009c

    new-array v10, v10, [Ljava/lang/Object;

    .line 1338
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1337
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1339
    :cond_2
    if-gt v11, v0, :cond_3

    if-ge v0, v13, :cond_3

    .line 1340
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090099

    new-array v10, v10, [Ljava/lang/Object;

    div-int/lit8 v11, v0, 0x3c

    .line 1341
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1340
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1342
    :cond_3
    if-ge v13, v0, :cond_4

    const v1, 0x15180

    if-ge v0, v1, :cond_4

    .line 1343
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090098

    new-array v10, v10, [Ljava/lang/Object;

    div-int/lit16 v11, v0, 0x5a0

    .line 1344
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1343
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1346
    :cond_4
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    const v8, 0x7f09009b

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private setEmptyDailyForeceastView()V
    .locals 12

    .prologue
    const/4 v11, 0x7

    .line 492
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v1, "dailyModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/DailyModel;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 494
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 495
    .local v7, "todayOfWeek":I
    const/4 v6, 0x0

    .line 496
    .local v6, "time":Ljava/lang/String;
    const-string v5, ""

    .line 497
    .local v5, "temp":Ljava/lang/String;
    const-string v4, ""

    .line 498
    .local v4, "link":Ljava/lang/String;
    const-string v8, ""

    .line 499
    .local v8, "type":Ljava/lang/String;
    const/4 v3, -0x1

    .line 500
    .local v3, "icon":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v11, :cond_1

    .line 501
    if-nez v2, :cond_0

    .line 502
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900b1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 506
    :goto_1
    new-instance v9, Lcn/nubia/weather/model/DailyModel;

    invoke-direct {v9, v6}, Lcn/nubia/weather/model/DailyModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    :cond_0
    add-int v9, v7, v2

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Lcn/nubia/weather/utils/CalendarUtil;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 509
    :cond_1
    iget-object v9, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    if-nez v9, :cond_2

    .line 510
    new-instance v9, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    .line 511
    iget-object v9, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastLv:Landroid/widget/ListView;

    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 513
    :cond_2
    iget-object v9, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    invoke-virtual {v9, v1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->setData(Ljava/util/List;)V

    .line 514
    return-void
.end method

.method private setEmptyHourlyForeceastView()V
    .locals 20

    .prologue
    .line 517
    const/16 v4, 0x18

    .line 518
    .local v4, "hourSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 520
    .local v5, "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    new-array v3, v4, [Ljava/util/Date;

    .line 522
    .local v3, "hourDates":[Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 523
    .local v16, "timeMillis":J
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v0, v16

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 524
    .local v2, "currentDate":Ljava/util/Date;
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/Date;->setMinutes(I)V

    .line 525
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/Date;->setSeconds(I)V

    .line 526
    const/4 v10, 0x0

    .line 527
    .local v10, "lastTimeStamp":Ljava/lang/String;
    const/4 v14, 0x0

    .line 528
    .local v14, "thisTimeStamp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v18, 0x7f0900f0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 530
    .local v12, "now":Ljava/lang/String;
    const/4 v9, 0x0

    .line 531
    .local v9, "lastTimeHasAmPmflag":Z
    const/4 v11, 0x0

    .line 532
    .local v11, "nextDoNotTrim":Z
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v8

    .line 533
    .local v8, "isChinse":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_2

    const/4 v7, 0x1

    .line 534
    .local v7, "is12Hour":Z
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_6

    .line 535
    new-instance v15, Ljava/util/Date;

    const v18, 0x36ee80

    mul-int v18, v18, v6

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    invoke-direct {v15, v0, v1}, Ljava/util/Date;-><init>(J)V

    aput-object v15, v3, v6

    .line 536
    aget-object v15, v3, v6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 537
    aget-object v15, v3, v6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/Date;->setSeconds(I)V

    .line 539
    aget-object v15, v3, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcn/nubia/weather/utils/WeatherUtils;->getEmptyHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v13

    .line 541
    .local v13, "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    if-nez v6, :cond_0

    .line 542
    invoke-virtual {v13, v12}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 544
    :cond_0
    invoke-virtual {v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getDateTime()Ljava/lang/String;

    move-result-object v14

    .line 545
    if-eqz v14, :cond_1

    if-eqz v10, :cond_1

    .line 546
    const/4 v15, 0x0

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v14, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    const/16 v19, 0x2

    .line 547
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 546
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 548
    if-eqz v11, :cond_3

    .line 549
    const/4 v11, 0x0

    .line 562
    :cond_1
    :goto_2
    move-object v10, v14

    .line 563
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 534
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 533
    .end local v6    # "i":I
    .end local v7    # "is12Hour":Z
    .end local v13    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 551
    .restart local v6    # "i":I
    .restart local v7    # "is12Hour":Z
    .restart local v13    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_3
    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 552
    const/4 v9, 0x0

    goto :goto_2

    .line 554
    :cond_4
    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    .line 555
    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 556
    const/4 v9, 0x0

    .line 557
    const/4 v11, 0x1

    goto :goto_2

    .line 559
    :cond_5
    const/4 v9, 0x1

    goto :goto_2

    .line 565
    .end local v13    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    if-nez v15, :cond_7

    .line 566
    new-instance v15, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v15, v0, v5}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    .line 568
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 572
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->setTimeZoneName(Ljava/lang/String;)V

    .line 573
    return-void

    .line 570
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    invoke-virtual {v15, v5}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->setData(Ljava/util/List;)V

    goto :goto_3
.end method

.method private setForecastData()V
    .locals 26

    .prologue
    .line 899
    const-string v4, "fragment forecast"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 901
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 903
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 904
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v16

    .line 905
    .local v16, "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    if-eqz v16, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 906
    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-direct {v12, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 907
    .local v12, "currentDate":Ljava/util/Date;
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/Date;->setMinutes(I)V

    .line 908
    const/4 v4, 0x0

    invoke-virtual {v12, v4}, Ljava/util/Date;->setSeconds(I)V

    .line 909
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-static {v12, v4}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v13

    .line 911
    .local v13, "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    invoke-virtual {v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmHightLowTemp()Ljava/lang/String;

    move-result-object v21

    .line 912
    .local v21, "todayLowHigh":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 913
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 914
    const-string v4, " / "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 915
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090089

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 917
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    :cond_0
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    .line 932
    .local v22, "todayModel":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    if-eqz v22, :cond_1

    .line 933
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmLink()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDayLink:Ljava/lang/String;

    .line 936
    :cond_1
    invoke-virtual {v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTodayFcIndex()I

    move-result v20

    .line 937
    .local v20, "todayIndex":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 938
    .local v14, "dailyModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/DailyModel;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 939
    .local v11, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x7

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v23

    .line 940
    .local v23, "todayOfWeek":I
    const/4 v5, 0x0

    .line 941
    .local v5, "time":Ljava/lang/String;
    const-string v7, ""

    .line 942
    .local v7, "temp":Ljava/lang/String;
    const-string v8, ""

    .line 943
    .local v8, "link":Ljava/lang/String;
    const-string v6, ""

    .line 944
    .local v6, "type":Ljava/lang/String;
    const/4 v9, -0x1

    .line 945
    .local v9, "icon":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    const/4 v4, 0x7

    move/from16 v0, v17

    if-ge v0, v4, :cond_7

    .line 946
    if-nez v17, :cond_4

    .line 947
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v24, 0x7f0900b1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 951
    :goto_2
    add-int v4, v20, v17

    add-int/lit8 v18, v4, 0x1

    .line 952
    .local v18, "index":I
    if-ltz v18, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_6

    .line 953
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    .line 954
    .local v19, "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeWeather()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/weather/model/ModelHelper;->getWeatherTypeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 956
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 957
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightWeather()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 958
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightWeather()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/weather/model/ModelHelper;->getWeatherTypeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 959
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090089

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 960
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->intValue()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "\u00b0"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 969
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeWeather()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v24, 0x0

    .line 968
    move/from16 v0, v24

    invoke-static {v4, v0}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherIcon(IZ)I

    move-result v9

    .line 970
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmLink()Ljava/lang/String;

    move-result-object v8

    .line 971
    new-instance v4, Lcn/nubia/weather/model/DailyModel;

    invoke-direct/range {v4 .. v9}, Lcn/nubia/weather/model/DailyModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 945
    .end local v19    # "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 920
    .end local v5    # "time":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    .end local v8    # "link":Ljava/lang/String;
    .end local v9    # "icon":I
    .end local v11    # "calendar":Ljava/util/Calendar;
    .end local v14    # "dailyModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/DailyModel;>;"
    .end local v17    # "i":I
    .end local v18    # "index":I
    .end local v20    # "todayIndex":I
    .end local v22    # "todayModel":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .end local v23    # "todayOfWeek":I
    :cond_3
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 921
    .local v10, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v24, 0x7f0e00ab

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 922
    .local v15, "darkColor":I
    const-string v4, " / "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 923
    .restart local v18    # "index":I
    if-ltz v18, :cond_0

    .line 924
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    const/16 v25, 0x22

    move/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v10, v4, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 927
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 989
    .end local v10    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v12    # "currentDate":Ljava/util/Date;
    .end local v13    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v15    # "darkColor":I
    .end local v16    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v18    # "index":I
    .end local v21    # "todayLowHigh":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v4

    .line 949
    .restart local v5    # "time":Ljava/lang/String;
    .restart local v6    # "type":Ljava/lang/String;
    .restart local v7    # "temp":Ljava/lang/String;
    .restart local v8    # "link":Ljava/lang/String;
    .restart local v9    # "icon":I
    .restart local v11    # "calendar":Ljava/util/Calendar;
    .restart local v12    # "currentDate":Ljava/util/Date;
    .restart local v13    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .restart local v14    # "dailyModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/DailyModel;>;"
    .restart local v16    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .restart local v17    # "i":I
    .restart local v20    # "todayIndex":I
    .restart local v21    # "todayLowHigh":Ljava/lang/String;
    .restart local v22    # "todayModel":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .restart local v23    # "todayOfWeek":I
    :cond_4
    add-int v4, v23, v17

    add-int/lit8 v4, v4, 0x1

    :try_start_1
    invoke-static {v4}, Lcn/nubia/weather/utils/CalendarUtil;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 963
    .restart local v18    # "index":I
    .restart local v19    # "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeWeather()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/weather/model/ModelHelper;->getWeatherTypeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 964
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->intValue()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "\u00b0"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, " / "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 965
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->intValue()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "\u00b0"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 973
    .end local v19    # "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :cond_6
    new-instance v4, Lcn/nubia/weather/model/DailyModel;

    invoke-direct {v4, v5}, Lcn/nubia/weather/model/DailyModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 977
    .end local v18    # "index":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    if-nez v4, :cond_8

    .line 978
    new-instance v4, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    .line 979
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastLv:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 981
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    invoke-virtual {v4, v14}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->setData(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 989
    .end local v5    # "time":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    .end local v8    # "link":Ljava/lang/String;
    .end local v9    # "icon":I
    .end local v11    # "calendar":Ljava/util/Calendar;
    .end local v12    # "currentDate":Ljava/util/Date;
    .end local v13    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v14    # "dailyModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/DailyModel;>;"
    .end local v16    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v17    # "i":I
    .end local v20    # "todayIndex":I
    .end local v21    # "todayLowHigh":Ljava/lang/String;
    .end local v22    # "todayModel":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .end local v23    # "todayOfWeek":I
    :cond_9
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 991
    return-void

    .line 985
    :cond_a
    :try_start_2
    const-string v4, "WeatherPageFragment"

    const-string v24, "setForecastData setEmptyDailyForeceastView"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setEmptyDailyForeceastView()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method private setGpsNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 576
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 577
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCheckNewTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 579
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mNoInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 580
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCheckNewTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 581
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mNoInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 585
    :cond_0
    return-void
.end method

.method private setHourfcAndObserveData()V
    .locals 30

    .prologue
    .line 602
    const-string v27, "fragment houfcOberve"

    invoke-static/range {v27 .. v27}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 604
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const-string v28, "--"

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 607
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setCityBarColor(Ljava/lang/Integer;)V

    .line 609
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v27

    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcn/nubia/weather/model/HourfcModel;->getmHours()Ljava/util/List;

    move-result-object v27

    if-eqz v27, :cond_d

    .line 610
    const/16 v8, 0x18

    .line 611
    .local v8, "hourSize":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 613
    .local v9, "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    const/4 v14, 0x0

    .line 614
    .local v14, "lastTimeStamp":Ljava/lang/String;
    const/16 v21, 0x0

    .line 615
    .local v21, "thisTimeStamp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0900f0

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 616
    .local v16, "now":Ljava/lang/String;
    new-array v7, v8, [Ljava/util/Date;

    .line 617
    .local v7, "hourDates":[Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 618
    .local v22, "timeMillis":J
    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v22

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 619
    .local v4, "currentDate":Ljava/util/Date;
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 620
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/util/Date;->setSeconds(I)V

    .line 621
    const-string v27, "fragment create hourlist"

    invoke-static/range {v27 .. v27}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 623
    const/4 v13, 0x0

    .line 624
    .local v13, "lastTimeHasAmPmflag":Z
    const/4 v15, 0x0

    .line 625
    .local v15, "nextDoNotTrim":Z
    :try_start_1
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v12

    .line 626
    .local v12, "isChinse":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_2

    const/4 v11, 0x1

    .line 627
    .local v11, "is12Hour":Z
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_7

    .line 628
    new-instance v27, Ljava/util/Date;

    const v28, 0x36ee80

    mul-int v28, v28, v10

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v28, v28, v22

    invoke-direct/range {v27 .. v29}, Ljava/util/Date;-><init>(J)V

    aput-object v27, v7, v10

    .line 629
    aget-object v27, v7, v10

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Date;->setMinutes(I)V

    .line 630
    aget-object v27, v7, v10

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Date;->setSeconds(I)V

    .line 631
    const/16 v19, 0x0

    .line 632
    .local v19, "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    const-string v27, "fragment create hour"

    invoke-static/range {v27 .. v27}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 634
    if-nez v10, :cond_3

    .line 635
    :try_start_2
    aget-object v27, v7, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v19

    .line 637
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 643
    :goto_2
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 645
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getDateTime()Ljava/lang/String;

    move-result-object v21

    .line 646
    if-eqz v21, :cond_0

    if-eqz v14, :cond_0

    .line 647
    const/16 v27, 0x0

    const/16 v28, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x2

    .line 648
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 647
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    .line 649
    if-eqz v15, :cond_4

    .line 650
    const/4 v15, 0x0

    .line 663
    :cond_0
    :goto_3
    move-object/from16 v14, v21

    .line 664
    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v27

    if-eqz v27, :cond_1

    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v27

    if-eqz v27, :cond_1

    .line 667
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 668
    .local v26, "weatherType":I
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDate()Ljava/util/Date;

    move-result-object v6

    .line 669
    .local v6, "date":Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v18

    .line 670
    .local v18, "temp":Ljava/lang/Integer;
    if-nez v18, :cond_1

    .line 627
    .end local v6    # "date":Ljava/util/Date;
    .end local v18    # "temp":Ljava/lang/Integer;
    .end local v26    # "weatherType":I
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 626
    .end local v10    # "i":I
    .end local v11    # "is12Hour":Z
    .end local v19    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_2
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 639
    .restart local v10    # "i":I
    .restart local v11    # "is12Hour":Z
    .restart local v19    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_3
    :try_start_4
    aget-object v27, v7, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcn/nubia/weather/utils/WeatherUtils;->getSimpleHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v19

    goto :goto_2

    .line 643
    :catchall_0
    move-exception v27

    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 676
    .end local v10    # "i":I
    .end local v11    # "is12Hour":Z
    .end local v12    # "isChinse":Z
    .end local v19    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :catchall_1
    move-exception v27

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 739
    .end local v4    # "currentDate":Ljava/util/Date;
    .end local v7    # "hourDates":[Ljava/util/Date;
    .end local v8    # "hourSize":I
    .end local v9    # "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    .end local v13    # "lastTimeHasAmPmflag":Z
    .end local v14    # "lastTimeStamp":Ljava/lang/String;
    .end local v15    # "nextDoNotTrim":Z
    .end local v16    # "now":Ljava/lang/String;
    .end local v21    # "thisTimeStamp":Ljava/lang/String;
    .end local v22    # "timeMillis":J
    :catchall_2
    move-exception v27

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v27

    .line 652
    .restart local v4    # "currentDate":Ljava/util/Date;
    .restart local v7    # "hourDates":[Ljava/util/Date;
    .restart local v8    # "hourSize":I
    .restart local v9    # "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    .restart local v10    # "i":I
    .restart local v11    # "is12Hour":Z
    .restart local v12    # "isChinse":Z
    .restart local v13    # "lastTimeHasAmPmflag":Z
    .restart local v14    # "lastTimeStamp":Ljava/lang/String;
    .restart local v15    # "nextDoNotTrim":Z
    .restart local v16    # "now":Ljava/lang/String;
    .restart local v19    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .restart local v21    # "thisTimeStamp":Ljava/lang/String;
    .restart local v22    # "timeMillis":J
    :cond_4
    const/16 v27, 0x2

    :try_start_7
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 653
    const/4 v13, 0x0

    goto :goto_3

    .line 655
    :cond_5
    if-eqz v11, :cond_6

    if-eqz v12, :cond_6

    if-eqz v13, :cond_6

    .line 656
    const/16 v27, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 657
    const/4 v13, 0x0

    .line 658
    const/4 v15, 0x1

    goto :goto_3

    .line 660
    :cond_6
    const/4 v13, 0x1

    goto :goto_3

    .line 676
    .end local v19    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_7
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 678
    const/4 v5, 0x0

    .line 679
    .local v5, "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    if-eqz v9, :cond_8

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_8

    .line 680
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    .line 682
    .restart local v5    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_8
    const-string v27, "fragment addSunRiseAndSetInfo"

    invoke-static/range {v27 .. v27}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 684
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->addSunRiseAndSetInfo(Ljava/util/List;Ljava/util/Date;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 686
    :try_start_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 688
    const-string v27, "fragment fill mHourlyForecastAdapter"

    invoke-static/range {v27 .. v27}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 690
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_b

    .line 691
    new-instance v27, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v9}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 697
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->setTimeZoneName(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 699
    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 702
    if-eqz v5, :cond_a

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v27

    if-eqz v27, :cond_a

    .line 703
    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setCityBarColor(Ljava/lang/Integer;)V

    .line 704
    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 705
    .local v20, "tempStr":Ljava/lang/String;
    const-string v17, "1"

    .line 706
    .local v17, "suffixOne":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v27

    .line 707
    invoke-virtual/range {v27 .. v27}, Lcn/nubia/weather/app/WeatherApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v24

    .line 708
    .local v24, "typefaceNubia":Landroid/graphics/Typeface;
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v27

    .line 709
    invoke-virtual/range {v27 .. v27}, Lcn/nubia/weather/app/WeatherApplication;->getmTypefaceOrigin()Landroid/graphics/Typeface;

    move-result-object v25

    .line 710
    .local v25, "typefaceNubiaOrigin":Landroid/graphics/Typeface;
    if-eqz v20, :cond_c

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_c

    if-eqz v25, :cond_c

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 717
    :cond_9
    :goto_5
    const-string v27, "WeatherPageFragment"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " mCurrentTemperatureTextView "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 719
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    .line 720
    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcn/nubia/weather/utils/WeatherStateUtils;->getWeatherState(I)Ljava/lang/String;

    move-result-object v28

    .line 719
    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 739
    .end local v4    # "currentDate":Ljava/util/Date;
    .end local v5    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v7    # "hourDates":[Ljava/util/Date;
    .end local v8    # "hourSize":I
    .end local v9    # "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    .end local v10    # "i":I
    .end local v11    # "is12Hour":Z
    .end local v12    # "isChinse":Z
    .end local v13    # "lastTimeHasAmPmflag":Z
    .end local v14    # "lastTimeStamp":Ljava/lang/String;
    .end local v15    # "nextDoNotTrim":Z
    .end local v16    # "now":Ljava/lang/String;
    .end local v17    # "suffixOne":Ljava/lang/String;
    .end local v20    # "tempStr":Ljava/lang/String;
    .end local v21    # "thisTimeStamp":Ljava/lang/String;
    .end local v22    # "timeMillis":J
    .end local v24    # "typefaceNubia":Landroid/graphics/Typeface;
    .end local v25    # "typefaceNubiaOrigin":Landroid/graphics/Typeface;
    :cond_a
    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 741
    return-void

    .line 686
    .restart local v4    # "currentDate":Ljava/util/Date;
    .restart local v5    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .restart local v7    # "hourDates":[Ljava/util/Date;
    .restart local v8    # "hourSize":I
    .restart local v9    # "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    .restart local v10    # "i":I
    .restart local v11    # "is12Hour":Z
    .restart local v12    # "isChinse":Z
    .restart local v13    # "lastTimeHasAmPmflag":Z
    .restart local v14    # "lastTimeStamp":Ljava/lang/String;
    .restart local v15    # "nextDoNotTrim":Z
    .restart local v16    # "now":Ljava/lang/String;
    .restart local v21    # "thisTimeStamp":Ljava/lang/String;
    .restart local v22    # "timeMillis":J
    :catchall_3
    move-exception v27

    :try_start_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 695
    :cond_b
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->setData(Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto/16 :goto_4

    .line 699
    :catchall_4
    move-exception v27

    :try_start_f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v27

    .line 713
    .restart local v17    # "suffixOne":Ljava/lang/String;
    .restart local v20    # "tempStr":Ljava/lang/String;
    .restart local v24    # "typefaceNubia":Landroid/graphics/Typeface;
    .restart local v25    # "typefaceNubiaOrigin":Landroid/graphics/Typeface;
    :cond_c
    if-eqz v24, :cond_9

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_5

    .line 727
    .end local v4    # "currentDate":Ljava/util/Date;
    .end local v5    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v7    # "hourDates":[Ljava/util/Date;
    .end local v8    # "hourSize":I
    .end local v9    # "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    .end local v10    # "i":I
    .end local v11    # "is12Hour":Z
    .end local v12    # "isChinse":Z
    .end local v13    # "lastTimeHasAmPmflag":Z
    .end local v14    # "lastTimeStamp":Ljava/lang/String;
    .end local v15    # "nextDoNotTrim":Z
    .end local v16    # "now":Ljava/lang/String;
    .end local v17    # "suffixOne":Ljava/lang/String;
    .end local v20    # "tempStr":Ljava/lang/String;
    .end local v21    # "thisTimeStamp":Ljava/lang/String;
    .end local v22    # "timeMillis":J
    .end local v24    # "typefaceNubia":Landroid/graphics/Typeface;
    .end local v25    # "typefaceNubiaOrigin":Landroid/graphics/Typeface;
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setEmptyHourlyForeceastView()V

    .line 728
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v27

    if-eqz v27, :cond_e

    .line 729
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcn/nubia/weather/model/ObserveModel;->getmTemperature()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v28, v0

    .line 731
    invoke-virtual/range {v28 .. v28}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcn/nubia/weather/model/ObserveModel;->getmWeather()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 730
    invoke-static/range {v28 .. v28}, Lcn/nubia/weather/utils/WeatherStateUtils;->getWeatherState(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 733
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const-string v28, "--"

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_6
.end method

.method private setIndexData()V
    .locals 13

    .prologue
    .line 1018
    const-string v10, "fragment setIndexData"

    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1020
    :try_start_0
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1021
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1022
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1023
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1024
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1025
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1027
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1028
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1029
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1030
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1031
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1032
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1034
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isShow()Z

    move-result v5

    .line 1035
    .local v5, "isShow":Z
    const/4 v4, 0x1

    .line 1036
    .local v4, "isIndicesClickable":Z
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900e5

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, "humid":Ljava/lang/String;
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v10

    if-eqz v10, :cond_0

    if-eqz v5, :cond_0

    .line 1038
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1039
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1040
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v11}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v11

    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmBodyTemperature()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/nubia/weather/utils/LanguageUtil;->getRealFeelLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1042
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1043
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1044
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v11}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v11

    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmVisibility()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/nubia/weather/utils/LanguageUtil;->getVisibilityLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1046
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1047
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1048
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityTextView:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    .line 1049
    invoke-virtual {v12}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v12

    invoke-virtual {v12}, Lcn/nubia/weather/model/ObserveModel;->getmHumidity()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1052
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1053
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v11}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v11

    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getUVIndex()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/nubia/weather/utils/LanguageUtil;->getRayLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1054
    const/4 v9, 0x0

    .line 1055
    .local v9, "windDirection":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1056
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/model/ObserveModel;->getmWindDirection()Ljava/lang/String;

    move-result-object v9

    .line 1061
    :goto_0
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1062
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1063
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1064
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1065
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1066
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1067
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/model/ObserveModel;->getmWindPower()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcn/nubia/weather/model/ModelHelper;->getWindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1069
    .local v8, "wind":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1070
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1071
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1072
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1075
    .end local v8    # "wind":Ljava/lang/String;
    .end local v9    # "windDirection":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/WeatherModel;->getmIndex()Lcn/nubia/weather/model/IndexModel;

    move-result-object v10

    if-eqz v10, :cond_6

    if-eqz v5, :cond_6

    .line 1076
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/WeatherModel;->getmIndex()Lcn/nubia/weather/model/IndexModel;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/model/IndexModel;->getmIndexes()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1077
    .local v2, "indexInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    if-nez v2, :cond_2

    .line 1104
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1106
    .end local v2    # "indexInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    :goto_1
    return-void

    .line 1058
    .restart local v9    # "windDirection":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/model/ObserveModel;->getWindDirectionEn()Ljava/lang/String;

    move-result-object v9

    .line 1059
    const/4 v4, 0x0

    goto :goto_0

    .line 1081
    .end local v9    # "windDirection":Ljava/lang/String;
    .restart local v2    # "indexInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1082
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->getIndexLink()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mIndexLink:Ljava/lang/String;

    .line 1084
    :cond_3
    const/4 v6, 0x0

    .line 1085
    .local v6, "sportDes":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;

    .line 1086
    .local v1, "indexInfo":Lcn/nubia/weather/model/IndexModel$IndexInfoModel;
    invoke-virtual {v1}, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->getmIndexAbbr()Ljava/lang/String;

    move-result-object v7

    .line 1087
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v1}, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->getmIndexlevel()Ljava/lang/String;

    move-result-object v3

    .line 1088
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {v1}, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->getIndexLink()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mIndexLink:Ljava/lang/String;

    .line 1090
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "29"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1091
    invoke-static {v3}, Lcn/nubia/weather/utils/LanguageUtil;->getSportLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1092
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1093
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1094
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1095
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1104
    .end local v1    # "indexInfo":Lcn/nubia/weather/model/IndexModel$IndexInfoModel;
    .end local v2    # "indexInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    .end local v3    # "info":Ljava/lang/String;
    .end local v6    # "sportDes":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    .line 1101
    :cond_6
    const/4 v10, 0x0

    :try_start_2
    invoke-direct {p0, v10}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setIndicesClickable(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1104
    .end local v0    # "humid":Ljava/lang/String;
    .end local v4    # "isIndicesClickable":Z
    .end local v5    # "isShow":Z
    :catchall_0
    move-exception v10

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v10
.end method

.method private setIndicesClickable(Z)V
    .locals 1
    .param p1, "isIndicesClickable"    # Z

    .prologue
    .line 1109
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1110
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1111
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1112
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1113
    return-void
.end method


# virtual methods
.method public addHandler()V
    .locals 2

    .prologue
    .line 1369
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHandler:Landroid/os/Handler;

    .line 1370
    invoke-virtual {v0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->addActivityHandler(Landroid/os/Handler;)V

    .line 1371
    return-void
.end method

.method public getWeatherModel()Lcn/nubia/weather/model/WeatherModel;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    return-object v0
.end method

.method public hideNotificationDetail()V
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1563
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 201
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 202
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 1484
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    .line 1485
    .local v0, "areaId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1486
    .local v2, "linkType":Ljava/lang/String;
    new-instance v1, Lcn/nubia/weather/utils/LinkUtils;

    invoke-direct {v1, v0}, Lcn/nubia/weather/utils/LinkUtils;-><init>(Ljava/lang/String;)V

    .line 1487
    .local v1, "linkHelper":Lcn/nubia/weather/utils/LinkUtils;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1543
    :cond_0
    :goto_0
    invoke-static {v2}, Lcn/nubia/weather/utils/ReYunUtils;->onLaunchBrowser(Ljava/lang/String;)V

    .line 1544
    return-void

    .line 1489
    :sswitch_0
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmLink:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;Z)V

    .line 1490
    const-string v2, "ALERT"

    .line 1493
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->showNotificationDetail()V

    goto :goto_0

    .line 1497
    :sswitch_2
    invoke-virtual {v1}, Lcn/nubia/weather/utils/LinkUtils;->startAirLink()V

    .line 1498
    const-string v2, "AIR"

    .line 1499
    goto :goto_0

    .line 1501
    :sswitch_3
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mIndexLink:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;Z)V

    .line 1502
    const-string v2, "INDEX"

    .line 1503
    goto :goto_0

    .line 1505
    :sswitch_4
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1506
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uv"

    invoke-virtual {v1, v3, v4}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1508
    const-string v2, "INDEX"

    goto :goto_0

    .line 1512
    :sswitch_5
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1513
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visibility"

    invoke-virtual {v1, v3, v4}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1515
    const-string v2, "INDEX"

    goto :goto_0

    .line 1519
    :sswitch_6
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1520
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RealFeel"

    invoke-virtual {v1, v3, v4}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1522
    const-string v2, "INDEX"

    goto :goto_0

    .line 1526
    :sswitch_7
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1527
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "humidity"

    invoke-virtual {v1, v3, v4}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1529
    const-string v2, "INDEX"

    goto/16 :goto_0

    .line 1533
    :sswitch_8
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1534
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wind"

    invoke-virtual {v1, v3, v4}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1536
    const-string v2, "INDEX"

    goto/16 :goto_0

    .line 1487
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f0072 -> :sswitch_0
        0x7f0f00a2 -> :sswitch_1
        0x7f0f00a4 -> :sswitch_2
        0x7f0f00ba -> :sswitch_4
        0x7f0f00bd -> :sswitch_6
        0x7f0f00c0 -> :sswitch_7
        0x7f0f00c3 -> :sswitch_5
        0x7f0f00c6 -> :sswitch_8
        0x7f0f00c9 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 208
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 209
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 210
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 211
    const-string v1, "weather"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/WeatherModel;

    iput-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->addHandler()V

    .line 214
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 224
    const-string v0, "fragment onCreateView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 227
    const v0, 0x7f030022

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mView:Landroid/view/View;

    .line 228
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-nez v0, :cond_0

    .line 229
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_0
    return-object v0

    .line 232
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initConfig()V

    .line 233
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initView(Landroid/view/View;)V

    .line 234
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initData()V

    .line 235
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initEvent()V

    .line 237
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mView:Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 307
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 308
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 298
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 302
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 313
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 314
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 285
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->hideNotificationDetail()V

    .line 286
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 287
    return-void
.end method

.method public onRefreshCurrentItem(Lcn/nubia/weather/ui/view/OnScrollHelper;)V
    .locals 3
    .param p1, "onScrollHelper"    # Lcn/nubia/weather/ui/view/OnScrollHelper;

    .prologue
    .line 1352
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    sget-object v2, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    .line 1353
    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/presenter/OverAllControl;->refreshWeatherData(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)Z

    .line 1354
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 262
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 263
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 219
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 220
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 257
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 292
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 293
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 244
    const-string v0, "fresh"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 246
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initData()V

    .line 247
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 249
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 251
    return-void

    .line 249
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public removeHandler()V
    .locals 2

    .prologue
    .line 1374
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHandler:Landroid/os/Handler;

    .line 1375
    invoke-virtual {v0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->removeActivityHandler(Landroid/os/Handler;)V

    .line 1376
    return-void
.end method

.method public resetAnimAlpha()V
    .locals 2

    .prologue
    .line 266
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setAnimAlpha(I)V

    .line 271
    :cond_0
    return-void
.end method

.method public resetHourlyForecast()V
    .locals 3

    .prologue
    .line 1456
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 1457
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 1459
    .local v0, "topVisible":I
    if-eqz v0, :cond_0

    .line 1462
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1465
    .end local v0    # "topVisible":I
    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-virtual {v0, v1, v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollTo(II)V

    .line 279
    :cond_0
    return-void
.end method

.method public setAnimationListener(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;

    .prologue
    .line 1365
    iput-object p1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mStopCallBack:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;

    .line 1366
    return-void
.end method

.method public setCityBarColor(Ljava/lang/Integer;)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 1468
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityBarLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 1469
    if-nez p1, :cond_0

    .line 1470
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1472
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    .line 1473
    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/utils/CalendarUtil;->isTimeNightByTimezone(Ljava/lang/String;)Z

    move-result v2

    .line 1472
    invoke-static {v1, v2}, Lcn/nubia/weather/utils/WeatherStateUtils;->getAnimationBgDrawable(IZ)I

    move-result v0

    .line 1474
    .local v0, "bgDrawableId":I
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1479
    .end local v0    # "bgDrawableId":I
    :cond_1
    return-void
.end method

.method public setFragmentAtTop()V
    .locals 2

    .prologue
    .line 1448
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    if-eqz v0, :cond_0

    .line 1449
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setNeedChangeAnimAlpha(Z)V

    .line 1450
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->setAtTop()V

    .line 1451
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setNeedChangeAnimAlpha(Z)V

    .line 1453
    :cond_0
    return-void
.end method

.method public setWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 1
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 186
    iput-object p1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    .line 187
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-nez v0, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isGpsNeeded:Z

    goto :goto_0
.end method

.method public showNotificationDetail()V
    .locals 5

    .prologue
    .line 1547
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmDetail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1548
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->scrollToTop()V

    .line 1549
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmDetailTextView:Lcn/nubia/weather/ui/view/JustifyTextView;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/JustifyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1550
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    .line 1551
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0042

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1552
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0043

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1550
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1554
    :cond_0
    return-void
.end method

.method public stopAnimation()Z
    .locals 1

    .prologue
    .line 1357
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->stopRefreshAnimation()V

    .line 1359
    const/4 v0, 0x1

    .line 1361
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
