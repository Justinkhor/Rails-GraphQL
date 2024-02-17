# Use the official Ruby image as base
FROM ruby:3.1.0

# Set the working directory inside the container
WORKDIR /app

# Install dependencies
RUN apt-get update -qq && apt-get install -y nodejs

# Install gems
COPY Gemfile Gemfile.lock ./
RUN bundle install

# Copy the rest of the application code
COPY . .

# Expose port 3000 (or the port your Rails server is running on)
EXPOSE 3000

# Start the Rails server when the container starts
CMD ["rails", "server", "-b", "0.0.0.0"]
