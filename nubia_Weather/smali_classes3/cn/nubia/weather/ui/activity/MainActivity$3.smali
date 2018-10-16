.class Lcn/nubia/weather/ui/activity/MainActivity$3;
.super Landroid/database/DataSetObserver;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/MainActivity;


# direct methods
.method constructor <init>(Lcn/nubia/weather/ui/activity/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/weather/ui/activity/MainActivity;

    .prologue
    .line 669
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/MainActivity$3;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .prologue
    .line 672
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 673
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity$3;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/MainActivity;->access$400(Lcn/nubia/weather/ui/activity/MainActivity;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-eqz v0, :cond_0

    .line 674
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/MainActivity$3;->this$0:Lcn/nubia/weather/ui/activity/MainActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/MainActivity;->access$600(Lcn/nubia/weather/ui/activity/MainActivity;)Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;

    move-result-object v0

    new-instance v1, Lcn/nubia/weather/ui/activity/MainActivity$3$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/activity/MainActivity$3$1;-><init>(Lcn/nubia/weather/ui/activity/MainActivity$3;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/weather/ui/activity/MainActivity$WeatherMainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 683
    :cond_0
    return-void
.end method
