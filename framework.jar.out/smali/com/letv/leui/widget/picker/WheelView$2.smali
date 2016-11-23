.class Lcom/letv/leui/widget/picker/WheelView$2;
.super Landroid/database/DataSetObserver;
.source "WheelView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/letv/leui/widget/picker/WheelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/picker/WheelView;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/picker/WheelView;)V
    .locals 0

    .prologue
    .line 425
    iput-object p1, p0, Lcom/letv/leui/widget/picker/WheelView$2;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 428
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$2;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->invalidateWheel(Z)V

    .line 429
    return-void
.end method

.method public onInvalidated()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/letv/leui/widget/picker/WheelView$2;->this$0:Lcom/letv/leui/widget/picker/WheelView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/letv/leui/widget/picker/WheelView;->invalidateWheel(Z)V

    .line 434
    return-void
.end method
