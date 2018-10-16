.class Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;
.super Landroid/widget/BaseAdapter;
.source "CityListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/CityListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragSortListAdapter"
.end annotation


# instance fields
.field private mAllCityWeathers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mSelectedItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityListActivity;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/activity/CityListActivity;Landroid/view/LayoutInflater;)V
    .locals 1
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 404
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 401
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    .line 405
    iput-object p2, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mSelectedItems:Ljava/util/HashMap;

    .line 407
    invoke-static {p1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter;->getWeatherListButLocationCity()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    .line 409
    return-void
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    .prologue
    .line 397
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mSelectedItems:Ljava/util/HashMap;

    return-object v0
.end method

.method private bindViewData(Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;I)V
    .locals 10
    .param p1, "viewHolder"    # Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 456
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageDrag:Landroid/widget/ImageView;

    new-instance v8, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$1;

    invoke-direct {v8, p0}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$1;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 465
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v7}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$300(Lcn/nubia/weather/ui/activity/CityListActivity;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 466
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageDrag:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_0

    .line 467
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageDrag:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 469
    :cond_0
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1

    .line 470
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 472
    :cond_1
    iget-object v8, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mSelectedItems:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    const/4 v7, 0x1

    :goto_0
    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 474
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    new-instance v8, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;

    invoke-direct {v8, p0, p2}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter$2;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;I)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 509
    :goto_1
    const/4 v0, 0x0

    .line 510
    .local v0, "cityInfoData":Lcn/nubia/weather/model/WeatherModel;
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, p2, :cond_2

    .line 511
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v7, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "cityInfoData":Lcn/nubia/weather/model/WeatherModel;
    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 513
    .restart local v0    # "cityInfoData":Lcn/nubia/weather/model/WeatherModel;
    :cond_2
    if-eqz v0, :cond_7

    .line 514
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_3

    .line 515
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 517
    :cond_3
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v7

    if-eqz v7, :cond_10

    .line 518
    invoke-static {v0}, Lcn/nubia/weather/utils/TimeUtils;->isDataUpToDate(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 520
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v2

    .line 521
    .local v2, "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_6

    .line 523
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    .line 524
    invoke-static {v7}, Lcn/nubia/weather/ui/activity/CityListActivity;->access$700(Lcn/nubia/weather/ui/activity/CityListActivity;)Ljava/util/Date;

    move-result-object v7

    .line 523
    invoke-static {v7, v0}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v1

    .line 525
    .local v1, "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    const/4 v6, -0x1

    .line 526
    .local v6, "type":I
    const-string v5, ""

    .line 527
    .local v5, "temp":Ljava/lang/String;
    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcn/nubia/weather/utils/CalendarUtil;->isTimeNightByTimezone(Ljava/lang/String;)Z

    move-result v4

    .line 528
    .local v4, "isNight":Z
    const/4 v3, -0x1

    .line 529
    .local v3, "icon":I
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_4

    .line 530
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 532
    :cond_4
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmHightLowTemp()Ljava/lang/String;

    move-result-object v5

    .line 533
    if-eqz v5, :cond_d

    .line 534
    const-string v7, " / "

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 535
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-virtual {v8}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 538
    const/4 v4, 0x1

    .line 546
    :cond_5
    :goto_2
    const/4 v7, -0x1

    if-eq v6, v7, :cond_f

    .line 547
    invoke-static {v6, v4}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherIcon(IZ)I

    move-result v3

    .line 548
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageCityWeather:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 552
    :goto_3
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 560
    .end local v1    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v2    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v3    # "icon":I
    .end local v4    # "isNight":Z
    .end local v5    # "temp":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_6
    :goto_4
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_7
    return-void

    .line 472
    .end local v0    # "cityInfoData":Lcn/nubia/weather/model/WeatherModel;
    :cond_8
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 500
    :cond_9
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageDrag:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_a

    .line 501
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageDrag:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 503
    :cond_a
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    invoke-virtual {v7}, Landroid/widget/CheckBox;->getVisibility()I

    move-result v7

    if-nez v7, :cond_b

    .line 504
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 506
    :cond_b
    iget-object v8, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mSelectedItems:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    const/4 v7, 0x1

    :goto_5
    invoke-virtual {v8, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto/16 :goto_1

    :cond_c
    const/4 v7, 0x0

    goto :goto_5

    .line 541
    .restart local v0    # "cityInfoData":Lcn/nubia/weather/model/WeatherModel;
    .restart local v1    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .restart local v2    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .restart local v3    # "icon":I
    .restart local v4    # "isNight":Z
    .restart local v5    # "temp":Ljava/lang/String;
    .restart local v6    # "type":I
    :cond_d
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_e

    .line 542
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    :cond_e
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageCityWeather:Landroid/widget/ImageView;

    const v8, 0x7f0200b3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 550
    :cond_f
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageCityWeather:Landroid/widget/ImageView;

    const v8, 0x7f0200b3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 555
    .end local v1    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v2    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v3    # "icon":I
    .end local v4    # "isNight":Z
    .end local v5    # "temp":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_10
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_11

    .line 556
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 558
    :cond_11
    iget-object v7, p1, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageCityWeather:Landroid/widget/ImageView;

    const v8, 0x7f0200b3

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_4
.end method

.method private buildHolder(Landroid/view/View;)Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
    .locals 3
    .param p1, "convertView"    # Landroid/view/View;

    .prologue
    .line 566
    new-instance v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;Lcn/nubia/weather/ui/activity/CityListActivity$1;)V

    .line 567
    .local v0, "holder":Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
    const v1, 0x7f0f009b

    .line 568
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageCityWeather:Landroid/widget/ImageView;

    .line 569
    const v1, 0x7f0f009c

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityName:Landroid/widget/TextView;

    .line 570
    const v1, 0x7f0f009d

    .line 571
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->tvCityTemperature:Landroid/widget/TextView;

    .line 572
    const v1, 0x7f0f006a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->imageDrag:Landroid/widget/ImageView;

    .line 573
    const v1, 0x7f0f009e

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;->cbMuiltSelected:Landroid/widget/CheckBox;

    .line 574
    return-object v0
.end method


# virtual methods
.method public dragTo(II)V
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 418
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 419
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 420
    .local v0, "fromModel":Lcn/nubia/weather/model/WeatherModel;
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 421
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v1, p2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 423
    .end local v0    # "fromModel":Lcn/nubia/weather/model/WeatherModel;
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->notifyDataSetChanged()V

    .line 424
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcn/nubia/weather/model/WeatherModel;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 397
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getItem(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 438
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 443
    const/4 v0, 0x0

    .line 444
    .local v0, "viewHolder":Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 445
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030021

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 446
    invoke-direct {p0, p2}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->buildHolder(Landroid/view/View;)Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;

    move-result-object v0

    .line 447
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 451
    :goto_0
    invoke-direct {p0, v0, p1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->bindViewData(Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;I)V

    .line 452
    return-object p2

    .line 449
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "viewHolder":Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
    check-cast v0, Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;

    .restart local v0    # "viewHolder":Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;
    goto :goto_0
.end method

.method public updateData()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->this$0:Lcn/nubia/weather/ui/activity/CityListActivity;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    .line 413
    invoke-virtual {v0}, Lcn/nubia/weather/data/DataCenter;->getWeatherListButLocationCity()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->mAllCityWeathers:Ljava/util/List;

    .line 414
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->notifyDataSetChanged()V

    .line 415
    return-void
.end method
