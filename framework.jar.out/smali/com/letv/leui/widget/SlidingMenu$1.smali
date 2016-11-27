.class Lcom/letv/leui/widget/SlidingMenu$1;
.super Ljava/lang/Object;
.source "SlidingMenu.java"

# interfaces
.implements Lcom/letv/leui/widget/CustomViewAbove$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/letv/leui/widget/SlidingMenu;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final POSITION_CLOSE:I = 0x1

.field public static final POSITION_OPEN:I = 0x0

.field public static final POSITION_SECONDARY_OPEN:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/letv/leui/widget/SlidingMenu;


# direct methods
.method constructor <init>(Lcom/letv/leui/widget/SlidingMenu;)V
    .locals 0

    .prologue
    iput-object p1, p0, Lcom/letv/leui/widget/SlidingMenu$1;->this$0:Lcom/letv/leui/widget/SlidingMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrolled(IFI)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu$1;->this$0:Lcom/letv/leui/widget/SlidingMenu;

    # getter for: Lcom/letv/leui/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;
    invoke-static {v0}, Lcom/letv/leui/widget/SlidingMenu;->access$000(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/letv/leui/widget/SlidingMenu$1;->this$0:Lcom/letv/leui/widget/SlidingMenu;

    # getter for: Lcom/letv/leui/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;
    invoke-static {v0}, Lcom/letv/leui/widget/SlidingMenu;->access$000(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;

    move-result-object v0

    invoke-interface {v0, p3}, Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;->onScrolling(I)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu$1;->this$0:Lcom/letv/leui/widget/SlidingMenu;

    # getter for: Lcom/letv/leui/widget/SlidingMenu;->mOpenListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;
    invoke-static {v1}, Lcom/letv/leui/widget/SlidingMenu;->access$100(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu$1;->this$0:Lcom/letv/leui/widget/SlidingMenu;

    # getter for: Lcom/letv/leui/widget/SlidingMenu;->mOpenListener:Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;
    invoke-static {v1}, Lcom/letv/leui/widget/SlidingMenu;->access$100(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;->onOpen()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu$1;->this$0:Lcom/letv/leui/widget/SlidingMenu;

    # getter for: Lcom/letv/leui/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;
    invoke-static {v1}, Lcom/letv/leui/widget/SlidingMenu;->access$000(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;

    move-result-object v1

    if-eqz v1, :cond_1

    if-ne p1, v2, :cond_4

    sget-object v0, Lcom/letv/leui/widget/SlidingMenu$State;->CLOSE:Lcom/letv/leui/widget/SlidingMenu$State;

    .local v0, "state":Lcom/letv/leui/widget/SlidingMenu$State;
    :goto_1
    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu$1;->this$0:Lcom/letv/leui/widget/SlidingMenu;

    # getter for: Lcom/letv/leui/widget/SlidingMenu;->mSlidingMenuStateChangeListener:Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;
    invoke-static {v1}, Lcom/letv/leui/widget/SlidingMenu;->access$000(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/letv/leui/widget/SlidingMenu$OnMenuStateChangeListener;->onMenuState(Lcom/letv/leui/widget/SlidingMenu$State;)V

    .end local v0    # "state":Lcom/letv/leui/widget/SlidingMenu$State;
    :cond_1
    return-void

    :cond_2
    if-ne p1, v2, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu$1;->this$0:Lcom/letv/leui/widget/SlidingMenu;

    # getter for: Lcom/letv/leui/widget/SlidingMenu;->mCloseListener:Lcom/letv/leui/widget/SlidingMenu$OnCloseListener;
    invoke-static {v1}, Lcom/letv/leui/widget/SlidingMenu;->access$200(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnCloseListener;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu$1;->this$0:Lcom/letv/leui/widget/SlidingMenu;

    # getter for: Lcom/letv/leui/widget/SlidingMenu;->mCloseListener:Lcom/letv/leui/widget/SlidingMenu$OnCloseListener;
    invoke-static {v1}, Lcom/letv/leui/widget/SlidingMenu;->access$200(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnCloseListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/letv/leui/widget/SlidingMenu$OnCloseListener;->onClose()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu$1;->this$0:Lcom/letv/leui/widget/SlidingMenu;

    # getter for: Lcom/letv/leui/widget/SlidingMenu;->mSecondaryOpenListner:Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;
    invoke-static {v1}, Lcom/letv/leui/widget/SlidingMenu;->access$300(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/letv/leui/widget/SlidingMenu$1;->this$0:Lcom/letv/leui/widget/SlidingMenu;

    # getter for: Lcom/letv/leui/widget/SlidingMenu;->mSecondaryOpenListner:Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;
    invoke-static {v1}, Lcom/letv/leui/widget/SlidingMenu;->access$300(Lcom/letv/leui/widget/SlidingMenu;)Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;

    move-result-object v1

    invoke-interface {v1}, Lcom/letv/leui/widget/SlidingMenu$OnOpenListener;->onOpen()V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/letv/leui/widget/SlidingMenu$State;->OPEN:Lcom/letv/leui/widget/SlidingMenu$State;

    .restart local v0    # "state":Lcom/letv/leui/widget/SlidingMenu$State;
    goto :goto_1
.end method
