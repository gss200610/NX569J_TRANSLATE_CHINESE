.class Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;
.super Landroid/os/Handler;
.source "CityAddActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/activity/CityAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CityAddHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;


# direct methods
.method private constructor <init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/weather/ui/activity/CityAddActivity;Lcn/nubia/weather/ui/activity/CityAddActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcn/nubia/weather/ui/activity/CityAddActivity;
    .param p2, "x1"    # Lcn/nubia/weather/ui/activity/CityAddActivity$1;

    .prologue
    .line 550
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;-><init>(Lcn/nubia/weather/ui/activity/CityAddActivity;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 554
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 567
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 568
    return-void

    .line 556
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-static {v0}, Lcn/nubia/weather/ui/activity/CityAddActivity;->access$500(Lcn/nubia/weather/ui/activity/CityAddActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityAddActivity$CityAddHandler;->this$0:Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityAddActivity;->access$400(Lcn/nubia/weather/ui/activity/CityAddActivity;)Lcn/nubia/weather/ui/activity/CityAddActivity$HotCityAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 554
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
