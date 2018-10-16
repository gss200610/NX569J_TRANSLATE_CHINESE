.class public Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "HourlyForecastAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSunRisePos:I

.field private mSunSetPos:I

.field private mTimeZoneName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "datas":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 39
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object v1, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mDatas:Ljava/util/List;

    .line 33
    iput v0, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mSunSetPos:I

    .line 34
    iput v0, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mSunRisePos:I

    .line 35
    iput-object v1, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mTimeZoneName:Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mContext:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 42
    iput-object p2, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mDatas:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method public clickToLink(Ljava/lang/String;I)V
    .locals 4
    .param p1, "areaId"    # Ljava/lang/String;
    .param p2, "position"    # I

    .prologue
    const/4 v3, -0x1

    .line 145
    new-instance v1, Lcn/nubia/weather/utils/LinkUtils;

    invoke-direct {v1, p1}, Lcn/nubia/weather/utils/LinkUtils;-><init>(Ljava/lang/String;)V

    .line 146
    .local v1, "linkHelper":Lcn/nubia/weather/utils/LinkUtils;
    move v0, p2

    .line 147
    .local v0, "index":I
    iget v2, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mSunSetPos:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mSunSetPos:I

    if-lt p2, v2, :cond_0

    .line 148
    add-int/lit8 v0, v0, -0x1

    .line 150
    :cond_0
    iget v2, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mSunRisePos:I

    if-eq v2, v3, :cond_1

    iget v2, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mSunRisePos:I

    if-lt p2, v2, :cond_1

    .line 151
    add-int/lit8 v0, v0, -0x1

    .line 153
    :cond_1
    invoke-virtual {v1, v0}, Lcn/nubia/weather/utils/LinkUtils;->startHourlyForecastLink(I)V

    .line 154
    const-string v2, "HOURLY"

    invoke-static {v2}, Lcn/nubia/weather/utils/ReYunUtils;->onLaunchBrowser(Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mDatas:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;

    invoke-virtual {p0, p1, p2}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->onBindViewHolder(Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;I)V
    .locals 8
    .param p1, "holder"    # Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x1

    .line 78
    const-string v4, "ourlyForecastViewHolder onBindViewHolder"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 80
    :try_start_0
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mDatas:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_1

    .line 81
    :cond_0
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 141
    :goto_0
    return-void

    .line 85
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mDatas:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    .line 86
    .local v1, "hourlyForecastModel":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getAreaID()Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "areaId":Ljava/lang/String;
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getSunRiseOrSetFlag()I

    move-result v2

    .line 89
    .local v2, "sunRiseSetFlag":I
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->timeText:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getDateTime()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->tempText:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41600000    # 14.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 91
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->tempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e00ab

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 93
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 94
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 95
    .local v3, "weatherType":I
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->tempText:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\u00b0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 95
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;

    .line 99
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDate()Ljava/util/Date;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mTimeZoneName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/CalendarUtil;->isTimeNightByTimezone(Ljava/util/Date;Ljava/lang/String;)Z

    move-result v5

    .line 98
    invoke-static {v3, v5}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherIcon(IZ)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    .line 103
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;

    new-instance v5, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$1;

    invoke-direct {v5, p0, v0, p2}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$1;-><init>(Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    .end local v3    # "weatherType":I
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_0

    .line 112
    :cond_3
    if-nez v2, :cond_4

    .line 113
    :try_start_2
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;

    const v5, 0x7f0201f1

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iput p2, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mSunRisePos:I

    .line 116
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->timeText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 117
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 118
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->tempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f090126

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 139
    .end local v0    # "areaId":Ljava/lang/String;
    .end local v1    # "hourlyForecastModel":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v2    # "sunRiseSetFlag":I
    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v4

    .line 119
    .restart local v0    # "areaId":Ljava/lang/String;
    .restart local v1    # "hourlyForecastModel":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .restart local v2    # "sunRiseSetFlag":I
    :cond_4
    if-ne v7, v2, :cond_5

    .line 120
    :try_start_3
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;

    const v5, 0x7f0201f2

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 122
    iput p2, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mSunSetPos:I

    .line 123
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->timeText:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setClickable(Z)V

    .line 124
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 125
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->tempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f090127

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 127
    :cond_5
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->tempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e004e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->tempText:Landroid/widget/TextView;

    const/4 v5, 0x1

    const/high16 v6, 0x41200000    # 10.0f

    invoke-virtual {v4, v5, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 130
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->tempText:Landroid/widget/TextView;

    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mContext:Landroid/content/Context;

    const v6, 0x7f090157

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    iget-object v4, p1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0, p1, p2}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 62
    const-string v2, "ourlyForecastViewHolder onCreateViewHolder"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 64
    :try_start_0
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f030024

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 66
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;

    invoke-direct {v1, v0}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;-><init>(Landroid/view/View;)V

    .line 67
    .local v1, "viewHolder":Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;
    const v2, 0x7f0f00b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->tempText:Landroid/widget/TextView;

    .line 68
    const v2, 0x7f0f00b6

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->timeText:Landroid/widget/TextView;

    .line 69
    const v2, 0x7f0f00b7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v1, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;->typeImg:Landroid/widget/ImageView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object v1

    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "viewHolder":Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter$HourlyForecastViewHolder;
    :catchall_0
    move-exception v2

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v2
.end method

.method public setData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    .local p1, "datas":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mDatas:Ljava/util/List;

    .line 47
    invoke-virtual {p0}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->notifyDataSetChanged()V

    .line 48
    return-void
.end method

.method public setTimeZoneName(Ljava/lang/String;)V
    .locals 0
    .param p1, "timeZoneName"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->mTimeZoneName:Ljava/lang/String;

    .line 52
    return-void
.end method
