.class Lcom/letv/leui/widget/LeListPopupWindow$PopupDataSetObserver;
.super Landroid/database/DataSetObserver;
.source "LeListPopupWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/LeListPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopupDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/LeListPopupWindow;


# direct methods
.method private constructor <init>(Lcom/letv/leui/widget/LeListPopupWindow;)V
    .locals 0

    .prologue
    .line 860
    iput-object p1, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupDataSetObserver;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/letv/leui/widget/LeListPopupWindow;Lcom/letv/leui/widget/LeListPopupWindow$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/letv/leui/widget/LeListPopupWindow;
    .param p2, "x1"    # Lcom/letv/leui/widget/LeListPopupWindow$1;

    .prologue
    .line 860
    invoke-direct {p0, p1}, Lcom/letv/leui/widget/LeListPopupWindow$PopupDataSetObserver;-><init>(Lcom/letv/leui/widget/LeListPopupWindow;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupDataSetObserver;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 865
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupDataSetObserver;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPopupWindow;->show()V

    .line 867
    :cond_0
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 871
    iget-object v0, p0, Lcom/letv/leui/widget/LeListPopupWindow$PopupDataSetObserver;->this$0:Lcom/letv/leui/widget/LeListPopupWindow;

    invoke-virtual {v0}, Lcom/letv/leui/widget/LeListPopupWindow;->dismiss()V

    .line 872
    return-void
.end method
