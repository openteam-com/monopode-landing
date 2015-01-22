module Enumerize
  module ActiveRecordSupport
    alias_method :enumerize_without_guard_clause, :enumerize

    def enumerize(name, options={})
      return unless (columns_hash.has_key?(name.to_s) rescue false)
      enumerize_without_guard_clause(name, options)
    end
  end
end
