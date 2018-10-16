.class public Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
.super Ljava/lang/Object;
.source "WeatherUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/utils/WeatherUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HourTempAndWeather"
.end annotation


# static fields
.field public static final SUN_RISE_FLAG:I = 0x0

.field public static final SUN_SET_FLAG:I = 0x1

.field public static final TEMPERATURE:I = -0x1


# instance fields
.field private dateTime:Ljava/lang/String;

.field private epochDateTime:Ljava/util/Date;

.field private mAlarmLevel:Ljava/lang/String;

.field private mAlarmTime:Ljava/lang/String;

.field private mAlarmType:Ljava/lang/String;

.field private mAreaID:Ljava/lang/String;

.field private mDate:Ljava/util/Date;

.field private mDayTemp:Ljava/lang/String;

.field private mDayType:Ljava/lang/String;

.field private mHightLowTemp:Ljava/lang/String;

.field private mNightTemp:Ljava/lang/String;

.field private mNightType:Ljava/lang/String;

.field private mTemp:Ljava/lang/Integer;

.field private mTodayDayTemp:Ljava/lang/Float;

.field private mTodayFcIndex:I

.field private mTodayNightTemp:Ljava/lang/Float;

.field private mType:Ljava/lang/Integer;

.field private mWindDirectionType:Ljava/lang/String;

.field private mWindForce:Ljava/lang/String;

.field private sunRiseOrSetFlag:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 743
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object v1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayDayTemp:Ljava/lang/Float;

    .line 672
    iput-object v1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayNightTemp:Ljava/lang/Float;

    .line 673
    iput v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayFcIndex:I

    .line 690
    iput v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->sunRiseOrSetFlag:I

    .line 745
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/util/Date;)V
    .locals 2
    .param p1, "mTemp"    # Ljava/lang/Integer;
    .param p2, "mType"    # Ljava/lang/Integer;
    .param p3, "mDate"    # Ljava/util/Date;

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 671
    iput-object v1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayDayTemp:Ljava/lang/Float;

    .line 672
    iput-object v1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayNightTemp:Ljava/lang/Float;

    .line 673
    iput v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayFcIndex:I

    .line 690
    iput v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->sunRiseOrSetFlag:I

    .line 749
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTemp:Ljava/lang/Integer;

    .line 750
    iput-object p2, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mType:Ljava/lang/Integer;

    .line 751
    iput-object p3, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDate:Ljava/util/Date;

    .line 752
    return-void
.end method


# virtual methods
.method public getAreaID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 717
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAreaID:Ljava/lang/String;

    return-object v0
.end method

.method public getDateTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->dateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getEpochDateTime()Ljava/util/Date;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->epochDateTime:Ljava/util/Date;

    return-object v0
.end method

.method public getSunRiseOrSetFlag()I
    .locals 1

    .prologue
    .line 693
    iget v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->sunRiseOrSetFlag:I

    return v0
.end method

.method public getmAlarmLevel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 835
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAlarmLevel:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 843
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAlarmTime:Ljava/lang/String;

    return-object v0
.end method

.method public getmAlarmType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAlarmType:Ljava/lang/String;

    return-object v0
.end method

.method public getmDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 795
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDate:Ljava/util/Date;

    return-object v0
.end method

.method public getmDayTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 867
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDayTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getmDayType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDayType:Ljava/lang/String;

    return-object v0
.end method

.method public getmHightLowTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 803
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mHightLowTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getmNightTemp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 875
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mNightTemp:Ljava/lang/String;

    return-object v0
.end method

.method public getmNightType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 859
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mNightType:Ljava/lang/String;

    return-object v0
.end method

.method public getmTemp()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 779
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTemp:Ljava/lang/Integer;

    return-object v0
.end method

.method public getmTodayDayTemp()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayDayTemp:Ljava/lang/Float;

    return-object v0
.end method

.method public getmTodayFcIndex()I
    .locals 1

    .prologue
    .line 735
    iget v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayFcIndex:I

    return v0
.end method

.method public getmTodayNightTemp()Ljava/lang/Float;
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayNightTemp:Ljava/lang/Float;

    return-object v0
.end method

.method public getmType()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 787
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getmWindDirectionType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mWindDirectionType:Ljava/lang/String;

    return-object v0
.end method

.method public getmWindForce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mWindForce:Ljava/lang/String;

    return-object v0
.end method

.method public setAreaID(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAreaID"    # Ljava/lang/String;

    .prologue
    .line 721
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAreaID:Ljava/lang/String;

    .line 722
    return-void
.end method

.method public setDateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateTime"    # Ljava/lang/String;

    .prologue
    .line 713
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->dateTime:Ljava/lang/String;

    .line 714
    return-void
.end method

.method public setEpochDateTime(Ljava/util/Date;)V
    .locals 0
    .param p1, "epochDateTime"    # Ljava/util/Date;

    .prologue
    .line 705
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->epochDateTime:Ljava/util/Date;

    .line 706
    return-void
.end method

.method public setSunRiseOrSetFlag(I)V
    .locals 0
    .param p1, "sunRiseOrSetFlag"    # I

    .prologue
    .line 697
    iput p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->sunRiseOrSetFlag:I

    .line 698
    return-void
.end method

.method public setmAlarmLevel(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmLevel"    # Ljava/lang/String;

    .prologue
    .line 839
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAlarmLevel:Ljava/lang/String;

    .line 840
    return-void
.end method

.method public setmAlarmTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmTime"    # Ljava/lang/String;

    .prologue
    .line 847
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAlarmTime:Ljava/lang/String;

    .line 848
    return-void
.end method

.method public setmAlarmType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAlarmType"    # Ljava/lang/String;

    .prologue
    .line 831
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mAlarmType:Ljava/lang/String;

    .line 832
    return-void
.end method

.method public setmDate(Ljava/util/Date;)V
    .locals 0
    .param p1, "mDate"    # Ljava/util/Date;

    .prologue
    .line 799
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDate:Ljava/util/Date;

    .line 800
    return-void
.end method

.method public setmDayTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDayTemp"    # Ljava/lang/String;

    .prologue
    .line 871
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDayTemp:Ljava/lang/String;

    .line 872
    return-void
.end method

.method public setmDayType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mDayType"    # Ljava/lang/String;

    .prologue
    .line 855
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mDayType:Ljava/lang/String;

    .line 856
    return-void
.end method

.method public setmHightLowTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mHightLowTemp"    # Ljava/lang/String;

    .prologue
    .line 807
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mHightLowTemp:Ljava/lang/String;

    .line 808
    return-void
.end method

.method public setmNightTemp(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNightTemp"    # Ljava/lang/String;

    .prologue
    .line 879
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mNightTemp:Ljava/lang/String;

    .line 880
    return-void
.end method

.method public setmNightType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mNightType"    # Ljava/lang/String;

    .prologue
    .line 863
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mNightType:Ljava/lang/String;

    .line 864
    return-void
.end method

.method public setmTemp(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mTemp"    # Ljava/lang/Integer;

    .prologue
    .line 783
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTemp:Ljava/lang/Integer;

    .line 784
    return-void
.end method

.method public setmTodayDayTemp(Ljava/lang/Float;)V
    .locals 0
    .param p1, "mTodayDayTemp"    # Ljava/lang/Float;

    .prologue
    .line 759
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayDayTemp:Ljava/lang/Float;

    .line 760
    return-void
.end method

.method public setmTodayFcIndex(I)V
    .locals 0
    .param p1, "mTodayFcIndex"    # I

    .prologue
    .line 739
    iput p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayFcIndex:I

    .line 740
    return-void
.end method

.method public setmTodayNightTemp(Ljava/lang/Float;)V
    .locals 0
    .param p1, "mTodayNightTemp"    # Ljava/lang/Float;

    .prologue
    .line 767
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mTodayNightTemp:Ljava/lang/Float;

    .line 768
    return-void
.end method

.method public setmType(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "mType"    # Ljava/lang/Integer;

    .prologue
    .line 791
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mType:Ljava/lang/Integer;

    .line 792
    return-void
.end method

.method public setmWindDirectionType(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWindDirectionType"    # Ljava/lang/String;

    .prologue
    .line 823
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mWindDirectionType:Ljava/lang/String;

    .line 824
    return-void
.end method

.method public setmWindForce(Ljava/lang/String;)V
    .locals 0
    .param p1, "mWindForce"    # Ljava/lang/String;

    .prologue
    .line 815
    iput-object p1, p0, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->mWindForce:Ljava/lang/String;

    .line 816
    return-void
.end method
