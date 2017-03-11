class WishesController < ApplicationController
	def index
		@wish = Wish.all
	end

	def new
		@wish = Wish.new
	end


	def create
		@wish = Wish.new(wish_params)
		  if @wish.save
		    # @wishはwish_path(@wish) に自動変換される
		    redirect_to '/wishes', notice: "ユーザ登録しました。"
		  else
		    # ValidationエラーなどでDBに保存できない場合 new.html.erb を再表示
		    render 'new'
		  end
	end

	private
    # Rails4からStrongParamaterと呼ばれる機能が追加されました。
    # セキュリティのため、permitメソッドで許可したパラメータ名しか取得できません。
    def wish_params
      params.require(:wish).permit(:item)
    end

    def show

    end
end
