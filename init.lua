let source = {}

function source.new(opts)
  -- vim.validate('your-source.opts.some_option', opts.some_option, { 'string' })
  -- vim.validate('your-source.opts.optional_option', opts.optional_option, { 'string' }, true)

  local self = setmetatable({}, { __index = source })
  self.opts = opts
  return self
end

function source:enabled() return vim.bo.filetype == 'ada' end

function source:get_trigger_characters() return { '.' } end

function source:get_completions(ctx, callback)

  local items = {}

  -- TODO: call ada executable

  callback({
    items = items,
    is_incomplete_backward = false,
    is_incomplete_forward = false,
  })

  return function() end
end

-- function source:resolve(item, callback)
  -- callback(item)
-- end

-- function source:execute(ctx, item, callback, default_implementation)
  -- default_implementation()
  -- callback()
-- end

return source



