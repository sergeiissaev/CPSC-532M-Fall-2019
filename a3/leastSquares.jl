include("misc.jl")

function leastSquares(X,y)
	vec_ones = ones(size(X)[1] ,1)
	X = hcat(vec_ones,X)
	# Find regression weights minimizing squared error
	w = (X'X)\(X'y)
	@show(size(X))
	@show(size(w))
	@show(size(vec_ones))

	# Make linear prediction function
	predict(Xhat) = hcat(vec_ones, Xhat) * w

	# Return model
	return GenericModel(predict)
end
