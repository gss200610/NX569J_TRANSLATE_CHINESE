.class Lim/fir/sdk/http/RequestParams$1;
.super Ljava/util/HashMap;


# instance fields
.field final synthetic val$key:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lim/fir/sdk/http/RequestParams$1;->val$key:Ljava/lang/String;

    iput-object p2, p0, Lim/fir/sdk/http/RequestParams$1;->val$value:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lim/fir/sdk/http/RequestParams$1;->val$key:Ljava/lang/String;

    iget-object v1, p0, Lim/fir/sdk/http/RequestParams$1;->val$value:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lim/fir/sdk/http/RequestParams$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
