.class Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;
.super Ljava/lang/Object;
.source "DragSortListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/weather/ui/view/DragSortListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DragSortTracker"
.end annotation


# instance fields
.field mBuilder:Ljava/lang/StringBuilder;

.field mFile:Ljava/io/File;

.field private mNumFlushes:I

.field private mNumInBuffer:I

.field private mTracking:Z

.field final synthetic this$0:Lcn/nubia/weather/ui/view/DragSortListView;


# direct methods
.method public constructor <init>(Lcn/nubia/weather/ui/view/DragSortListView;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2939
    iput-object p1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2930
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    .line 2934
    iput v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 2935
    iput v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2937
    iput-boolean v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mTracking:Z

    .line 2940
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2941
    .local v0, "root":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "dslv_state.txt"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    .line 2943
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2945
    :try_start_0
    iget-object v1, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2953
    :cond_0
    :goto_0
    return-void

    .line 2947
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public appendState()V
    .locals 7

    .prologue
    .line 2962
    iget-boolean v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v3, :cond_1

    .line 3013
    :cond_0
    :goto_0
    return-void

    .line 2966
    :cond_1
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "<DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2967
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildCount()I

    move-result v0

    .line 2968
    .local v0, "children":I
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/view/DragSortListView;->getFirstVisiblePosition()I

    move-result v1

    .line 2969
    .local v1, "first":I
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Positions>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2970
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 2971
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    add-int v4, v1, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2970
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2973
    :cond_2
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Positions>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2975
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Tops>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2976
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    .line 2977
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v4, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2976
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2979
    :cond_3
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Tops>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2980
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <Bottoms>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v0, :cond_4

    .line 2982
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v4, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2981
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2984
    :cond_4
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</Bottoms>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2986
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1300(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FirstExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2987
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FirstExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    .line 2988
    invoke-static {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1300(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2800(Lcn/nubia/weather/ui/view/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v6, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v6}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1300(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2900(Lcn/nubia/weather/ui/view/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FirstExpBlankHeight>\n"

    .line 2989
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2990
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1400(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SecondExpPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2991
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SecondExpBlankHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    .line 2992
    invoke-static {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1400(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v5

    invoke-static {v4, v5}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2800(Lcn/nubia/weather/ui/view/DragSortListView;I)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v6, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v6}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1400(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v6

    invoke-static {v5, v6}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2900(Lcn/nubia/weather/ui/view/DragSortListView;I)I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SecondExpBlankHeight>\n"

    .line 2993
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2994
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcPos>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$900(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SrcPos>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2995
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <SrcHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$1100(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    iget-object v5, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v5}, Lcn/nubia/weather/ui/view/DragSortListView;->getDividerHeight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</SrcHeight>\n"

    .line 2996
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2997
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <ViewHeight>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</ViewHeight>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2998
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <LastY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$3000(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</LastY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2999
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <FloatY>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-static {v4}, Lcn/nubia/weather/ui/view/DragSortListView;->access$2000(Lcn/nubia/weather/ui/view/DragSortListView;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</FloatY>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3000
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "    <ShuffleEdges>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3001
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_5

    .line 3002
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    add-int v5, v1, v2

    iget-object v6, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->this$0:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v6, v2}, Lcn/nubia/weather/ui/view/DragSortListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-static {v4, v5, v6}, Lcn/nubia/weather/ui/view/DragSortListView;->access$3100(Lcn/nubia/weather/ui/view/DragSortListView;II)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3001
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 3004
    :cond_5
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</ShuffleEdges>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3006
    iget-object v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v4, "</DSLVState>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3007
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumInBuffer:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumInBuffer:I

    .line 3009
    iget v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumInBuffer:I

    const/16 v4, 0x3e8

    if-le v3, v4, :cond_0

    .line 3010
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->flush()V

    .line 3011
    const/4 v3, 0x0

    iput v3, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumInBuffer:I

    goto/16 :goto_0
.end method

.method public flush()V
    .locals 5

    .prologue
    .line 3016
    iget-boolean v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mTracking:Z

    if-nez v2, :cond_0

    .line 3038
    :goto_0
    return-void

    .line 3022
    :cond_0
    const/4 v0, 0x1

    .line 3023
    .local v0, "append":Z
    :try_start_0
    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumFlushes:I

    if-nez v2, :cond_1

    .line 3024
    const/4 v0, 0x0

    .line 3026
    :cond_1
    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mFile:Ljava/io/File;

    invoke-direct {v1, v2, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 3028
    .local v1, "writer":Ljava/io/FileWriter;
    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 3029
    iget-object v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    iget-object v4, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 3031
    invoke-virtual {v1}, Ljava/io/FileWriter;->flush()V

    .line 3032
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    .line 3034
    iget v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumFlushes:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumFlushes:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3035
    .end local v1    # "writer":Ljava/io/FileWriter;
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public startTracking()V
    .locals 2

    .prologue
    .line 2956
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "<DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2957
    const/4 v0, 0x0

    iput v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mNumFlushes:I

    .line 2958
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mTracking:Z

    .line 2959
    return-void
.end method

.method public stopTracking()V
    .locals 2

    .prologue
    .line 3041
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mTracking:Z

    if-eqz v0, :cond_0

    .line 3042
    iget-object v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mBuilder:Ljava/lang/StringBuilder;

    const-string v1, "</DSLVStates>\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3043
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->flush()V

    .line 3044
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/DragSortListView$DragSortTracker;->mTracking:Z

    .line 3046
    :cond_0
    return-void
.end method
