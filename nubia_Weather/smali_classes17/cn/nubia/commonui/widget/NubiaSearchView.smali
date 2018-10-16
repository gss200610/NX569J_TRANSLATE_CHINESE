.class public Lcn/nubia/commonui/widget/NubiaSearchView;
.super Landroid/widget/LinearLayout;
.source "NubiaSearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;,
        Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "NubiaSearchView"

.field public static final MAX:I = 0x63


# instance fields
.field private mClearingFocus:Z

.field private final mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private mOnQueryChangeListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private final mQueryTextView:Landroid/widget/EditText;

.field private final mSearchButton:Landroid/widget/ImageView;

.field private final mSearchEditFrame:Landroid/view/View;

.field private final mSearchHintIcon:Landroid/widget/ImageView;

.field private final mSearchIconResId:I

.field private final mSearchPlate:Landroid/view/View;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private final mSubmitArea:Landroid/view/View;

.field private final mSubmitButton:Landroid/widget/ImageView;

.field private mSubmitButtonEnabled:Z

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private final mTotalTextView:Landroid/widget/TextView;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 173
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 174
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 177
    sget v0, Lcn/nubia/commonui/R$attr;->nubiaSearchViewStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 178
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 186
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 79
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconifiedByDefault:Z

    .line 98
    new-instance v8, Lcn/nubia/commonui/widget/NubiaSearchView$1;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$1;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 135
    new-instance v8, Lcn/nubia/commonui/widget/NubiaSearchView$2;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$2;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 144
    new-instance v8, Ljava/util/WeakHashMap;

    invoke-direct {v8}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 629
    new-instance v8, Lcn/nubia/commonui/widget/NubiaSearchView$4;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$4;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 642
    new-instance v8, Lcn/nubia/commonui/widget/NubiaSearchView$5;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$5;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 801
    new-instance v8, Lcn/nubia/commonui/widget/NubiaSearchView$6;

    invoke-direct {v8, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$6;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 187
    sget-object v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView:[I

    invoke-virtual {p1, p2, v8, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 189
    .local v0, "a":Landroid/content/res/TypedArray;
    const-string v8, "layout_inflater"

    .line 190
    invoke-virtual {p1, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 191
    .local v3, "inflater":Landroid/view/LayoutInflater;
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_layout:I

    sget v9, Lcn/nubia/commonui/R$layout;->nubia_search_view:I

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 193
    .local v5, "layoutResId":I
    const/4 v8, 0x1

    invoke-virtual {v3, v5, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 195
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_src_text:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/EditText;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    .line 197
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_edit_frame:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    .line 198
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_plate:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchPlate:Landroid/view/View;

    .line 199
    sget v8, Lcn/nubia/commonui/R$id;->nubia_submit_area:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitArea:Landroid/view/View;

    .line 200
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_button:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    .line 201
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_go_btn:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    .line 202
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_close_btn:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 203
    sget v8, Lcn/nubia/commonui/R$id;->nubia_search_mag_icon:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    .line 205
    sget v8, Lcn/nubia/commonui/R$id;->nubia_total:I

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iput-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    .line 208
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    sget v9, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_queryBackground:I

    .line 209
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 208
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 210
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitArea:Landroid/view/View;

    sget v9, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_submitBackground:I

    .line 211
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 210
    invoke-virtual {v8, v9}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 212
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_searchIcon:I

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    iput v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchIconResId:I

    .line 214
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    iget v9, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchIconResId:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 215
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    sget v9, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_goIcon:I

    .line 216
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 215
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    sget v9, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_closeIcon:I

    .line 218
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 217
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 219
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    sget v9, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_searchIcon:I

    .line 220
    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 219
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 227
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v9, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 230
    iget-object v8, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    new-instance v9, Lcn/nubia/commonui/widget/NubiaSearchView$3;

    invoke-direct {v9, p0}, Lcn/nubia/commonui/widget/NubiaSearchView$3;-><init>(Lcn/nubia/commonui/widget/NubiaSearchView;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 239
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_iconifiedByDefault:I

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v8

    invoke-virtual {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconifiedByDefault(Z)V

    .line 242
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_maxWidth:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 244
    .local v6, "maxWidth":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 245
    invoke-virtual {p0, v6}, Lcn/nubia/commonui/widget/NubiaSearchView;->setMaxWidth(I)V

    .line 248
    :cond_0
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_queryHint:I

    .line 249
    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    .line 250
    .local v7, "queryHint":Ljava/lang/CharSequence;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 251
    invoke-virtual {p0, v7}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 254
    :cond_1
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_imeOptions:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 256
    .local v2, "imeOptions":I
    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    .line 257
    invoke-virtual {p0, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setImeOptions(I)V

    .line 260
    :cond_2
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_inputType:I

    const/4 v9, -0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 262
    .local v4, "inputType":I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_3

    .line 263
    invoke-virtual {p0, v4}, Lcn/nubia/commonui/widget/NubiaSearchView;->setInputType(I)V

    .line 266
    :cond_3
    const/4 v1, 0x1

    .line 267
    .local v1, "focusable":Z
    sget v8, Lcn/nubia/commonui/R$styleable;->NubiaSearchView_focusable:I

    invoke-virtual {v0, v8, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 269
    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setFocusable(Z)V

    .line 271
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 272
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 273
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateQueryHint()V

    .line 274
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onSubmitQuery()V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/commonui/widget/NubiaSearchView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/commonui/widget/NubiaSearchView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/commonui/widget/NubiaSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/commonui/widget/NubiaSearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 550
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/nubia/commonui/R$dimen;->nubia_search_view_preferred_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 795
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    .line 569
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 710
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 711
    .local v0, "text":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 712
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_1

    .line 714
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    invoke-interface {v1}, Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 716
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->clearFocus()V

    .line 718
    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 727
    :cond_1
    :goto_0
    return-void

    .line 722
    :cond_2
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 723
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateTotalTextView(I)V

    .line 724
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 725
    invoke-direct {p0, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    .line 730
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 731
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 732
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->setImeVisibility(Z)V

    .line 733
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 734
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 736
    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 3

    .prologue
    .line 654
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 655
    .local v0, "query":Ljava/lang/CharSequence;
    if-eqz v0, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_1

    .line 656
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryChangeListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryChangeListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    .line 658
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 657
    invoke-interface {v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 659
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setImeVisibility(Z)V

    .line 662
    :cond_1
    return-void
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 4
    .param p1, "newText"    # Ljava/lang/CharSequence;

    .prologue
    .line 673
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 674
    .local v1, "text":Ljava/lang/CharSequence;
    iput-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 675
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 677
    .local v0, "hasText":Z
    :goto_0
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateSubmitButton(Z)V

    .line 678
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateCloseButton()V

    .line 679
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateSubmitArea()V

    .line 680
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryChangeListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 681
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 682
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryChangeListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 684
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 685
    return-void

    .line 675
    .end local v0    # "hasText":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 602
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 616
    if-eqz p1, :cond_1

    .line 617
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->post(Ljava/lang/Runnable;)Z

    .line 627
    :cond_0
    :goto_0
    return-void

    .line 619
    :cond_1
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 620
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    .line 621
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 623
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 624
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;

    .prologue
    .line 788
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 790
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 792
    return-void

    .line 791
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private showSoftInputUnchecked()V
    .locals 8

    .prologue
    .line 116
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "input_method"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodManager;

    .line 117
    .local v3, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v3, :cond_0

    .line 119
    :try_start_0
    const-string v5, "android.view.inputmethod.InputMethodManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 120
    .local v1, "cls":Ljava/lang/Class;
    const-string v5, "showSoftInputUnchecked"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 121
    .local v4, "method":Ljava/lang/reflect/Method;
    if-eqz v4, :cond_0

    .line 122
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 123
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput-object v7, v5, v6

    invoke-virtual {v4, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 134
    .end local v1    # "cls":Ljava/lang/Class;
    .end local v4    # "method":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "ce":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 128
    .end local v0    # "ce":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 129
    .local v2, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0

    .line 130
    .end local v2    # "e":Ljava/lang/NoSuchMethodError;
    :catch_2
    move-exception v2

    .line 131
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 590
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 593
    .local v0, "hasText":Z
    :goto_0
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 594
    if-nez v0, :cond_0

    .line 595
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateTotalTextView(I)V

    .line 597
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_3

    sget-object v1, Lcn/nubia/commonui/widget/NubiaSearchView;->ENABLED_STATE_SET:[I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 599
    return-void

    .end local v0    # "hasText":Z
    :cond_1
    move v0, v1

    .line 590
    goto :goto_0

    .line 593
    .restart local v0    # "hasText":Z
    :cond_2
    const/16 v1, 0x8

    goto :goto_1

    .line 597
    :cond_3
    sget-object v1, Lcn/nubia/commonui/widget/NubiaSearchView;->EMPTY_STATE_SET:[I

    goto :goto_2
.end method

.method private updateFocusedState()V
    .locals 0

    .prologue
    .line 606
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->invalidate()V

    .line 607
    return-void
.end method

.method private updateQueryHint()V
    .locals 2

    .prologue
    .line 665
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 666
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 670
    :goto_0
    return-void

    .line 668
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateQueryTextAppearence(Z)V
    .locals 3
    .param p1, "hasText"    # Z

    .prologue
    .line 817
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const/4 v1, 0x2

    const/high16 v2, 0x41800000    # 16.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/EditText;->setTextSize(IF)V

    .line 818
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    .line 582
    const/16 v0, 0x8

    .line 583
    .local v0, "visibility":I
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 584
    const/4 v0, 0x0

    .line 586
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 587
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .param p1, "hasText"    # Z

    .prologue
    .line 573
    const/16 v0, 0x8

    .line 574
    .local v0, "visibility":I
    iget-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 576
    const/4 v0, 0x0

    .line 578
    :cond_0
    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButton:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 579
    return-void
.end method

.method private updateTotalTextView(I)V
    .locals 7
    .param p1, "total"    # I

    .prologue
    const/16 v5, 0x63

    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 695
    if-le p1, v5, :cond_2

    .line 696
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$string;->nubia_total_text:I

    new-array v3, v3, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 697
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "+"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 696
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 698
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 704
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 707
    :cond_1
    return-void

    .line 699
    :cond_2
    if-ltz p1, :cond_0

    .line 700
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcn/nubia/commonui/R$string;->nubia_total_text:I

    new-array v3, v3, [Ljava/lang/Object;

    .line 701
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 700
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mTotalTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateViewsVisibility(Z)V
    .locals 5
    .param p1, "collapsed"    # Z

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 555
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconified:Z

    .line 557
    if-eqz p1, :cond_0

    move v1, v2

    .line 559
    .local v1, "visCollapsed":I
    :goto_0
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    .line 561
    .local v0, "hasText":Z
    :goto_1
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchButton:Landroid/widget/ImageView;

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 562
    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateSubmitButton(Z)V

    .line 563
    iget-object v4, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 564
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateCloseButton()V

    .line 565
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateSubmitArea()V

    .line 566
    return-void

    .end local v0    # "hasText":Z
    .end local v1    # "visCollapsed":I
    :cond_0
    move v1, v3

    .line 557
    goto :goto_0

    .restart local v1    # "visCollapsed":I
    :cond_1
    move v0, v2

    .line 559
    goto :goto_1

    .restart local v0    # "hasText":Z
    :cond_2
    move v3, v2

    .line 563
    goto :goto_2
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 340
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mClearingFocus:Z

    .line 341
    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setImeVisibility(Z)V

    .line 342
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 343
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 344
    iput-boolean v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mClearingFocus:Z

    .line 345
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 299
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 508
    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 382
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 414
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 417
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getQueryTextView()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    return-object v0
.end method

.method public getSearchEditFrame()Landroid/view/View;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchEditFrame:Landroid/view/View;

    return-object v0
.end method

.method public getSearchHintIcon()Landroid/view/View;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    .line 439
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 462
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    .line 492
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    .line 471
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 749
    const-string v0, ""

    invoke-virtual {p0, v0, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 750
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->clearFocus()V

    .line 751
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 752
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 753
    iput-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mExpandedInActionView:Z

    .line 754
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 761
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    .line 770
    :goto_0
    return-void

    .line 764
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mExpandedInActionView:Z

    .line 765
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getImeOptions()I

    move-result v0

    iput v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCollapsedImeOptions:I

    .line 766
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x2000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 768
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 769
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 612
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 613
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 774
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 775
    const-class v0, Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 776
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 780
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 781
    const-class v0, Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 782
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 514
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 515
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 547
    :goto_0
    return-void

    .line 519
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 520
    .local v1, "widthMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 522
    .local v0, "width":I
    sparse-switch v1, :sswitch_data_0

    .line 544
    :cond_1
    :goto_1
    const/high16 v1, 0x40000000    # 2.0f

    .line 545
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 526
    :sswitch_0
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    .line 527
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 529
    :cond_2
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 531
    goto :goto_1

    .line 535
    :sswitch_1
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    .line 536
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 541
    :sswitch_2
    iget v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    iget v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    :goto_2
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_2

    .line 522
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 740
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 741
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->postUpdateFocusedState()V

    .line 742
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    const/4 v1, 0x0

    .line 320
    iget-boolean v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mClearingFocus:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 334
    :cond_0
    :goto_0
    return v0

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 324
    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_3

    .line 327
    iget-object v2, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v2, p1, p2}, Landroid/widget/EditText;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 329
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 330
    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 334
    .end local v0    # "result":Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setIconified(Z)V
    .locals 0
    .param p1, "iconify"    # Z

    .prologue
    .line 451
    if-eqz p1, :cond_0

    .line 452
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onCloseClicked()V

    .line 456
    :goto_0
    return-void

    .line 454
    :cond_0
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .param p1, "iconified"    # Z

    .prologue
    .line 428
    iget-boolean v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    .line 433
    :goto_0
    return-void

    .line 430
    :cond_0
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mIconifiedByDefault:Z

    .line 431
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 432
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .param p1, "imeOptions"    # I

    .prologue
    .line 292
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 293
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .param p1, "inputType"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setInputType(I)V

    .line 307
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .param p1, "maxpixels"    # I

    .prologue
    .line 499
    iput p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mMaxWidth:I

    .line 500
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->requestLayout()V

    .line 501
    return-void
.end method

.method public setOnCloseListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    .prologue
    .line 358
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    .line 359
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnFocusChangeListener;

    .prologue
    .line 365
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 366
    return-void
.end method

.method public setOnQueryTextListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    .prologue
    .line 351
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnQueryChangeListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    .line 352
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 375
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 376
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .param p1, "query"    # Ljava/lang/CharSequence;
    .param p2, "submit"    # Z

    .prologue
    .line 390
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 391
    if-eqz p1, :cond_0

    .line 392
    iget-object v0, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryTextView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 393
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 396
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 397
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onSubmitQuery()V

    .line 399
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "hint"    # Ljava/lang/CharSequence;

    .prologue
    .line 406
    iput-object p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 407
    invoke-direct {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateQueryHint()V

    .line 408
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 484
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mQueryRefinement:Z

    .line 485
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Lcn/nubia/commonui/widget/NubiaSearchView;->mSubmitButtonEnabled:Z

    .line 467
    invoke-virtual {p0}, Lcn/nubia/commonui/widget/NubiaSearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateViewsVisibility(Z)V

    .line 468
    return-void
.end method

.method public setTotalTextHint(I)V
    .locals 0
    .param p1, "total"    # I

    .prologue
    .line 691
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/NubiaSearchView;->updateTotalTextView(I)V

    .line 692
    return-void
.end method
